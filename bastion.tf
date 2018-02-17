# --------------------------------------------------------------------------------------------------------------------
# CREATE PUBLIC SUBNET FOR BASTION HOST
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Bastion-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.0.0/24"
  map_public_ip_on_launch = "True"
}
# --------------------------------------------------------------------------------------------------------------------
# CREATE Bastion ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Bastion1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Bastion-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Bastion-Subnet.id}"
  route_table_id = "${aws_route_table.Bastion1-RTB.id}"
}
# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Bastion ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Bastion-instanceSG" {
  name = "Bastion-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Inbound SSH
  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound All Protocols
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
# ---------------------------------------------------------------------------------------------------------------------
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE Bastion ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "Bastion-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-833d2ef9"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.Bastion-instanceSG.id}"]
  key_name      = "DAIP-BastionHost"

# This device contains homePath
  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_size           = 8
    volume_type           = "gp2"
#    encrypted             = true
    delete_on_termination = true
  }

  ebs_block_device {
    device_name           = "/dev/xvdc"
    volume_size           = 8
    volume_type           = "gp2"
#    encrypted             = true
    delete_on_termination = true
  }

  lifecycle {
    create_before_destroy = true
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR Bastion
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "Bastion-ASG" {
  launch_configuration = "${aws_launch_configuration.Bastion-LG.name}"
  # availability_zones   = ["${data.aws_availability_zones.all.names}"]
  # availability_zones = ["${var.region}a"]
  vpc_zone_identifier = ["${aws_subnet.Bastion-Subnet.id}"]

  min_size = 1
  max_size = 2

    tag {
    key                 = "Name"
    value               = "Bastion-ASG"
    propagate_at_launch = true
  }
}
