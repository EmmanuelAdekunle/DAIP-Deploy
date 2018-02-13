
# --------------------------------------------------------------------------------------------------------------------
# CREATE PUBLIC SUBNET FOR NAT
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "NAT-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.10.0/24"
  map_public_ip_on_launch = "True"
}
# --------------------------------------------------------------------------------------------------------------------
# CREATE NAT ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "NAT-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "NAT-RTB-Associate" {
  subnet_id      = "${aws_subnet.NAT-Subnet.id}"
  route_table_id = "${aws_route_table.NAT-RTB.id}"
}
# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S USED BY NAT INSTANCE
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "NAT-instanceSG" {
  name = "NAT-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Inbound SSH
  ingress {
    from_port   = "80"
    to_port     = "80"
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
# CREATE THE NAT INSTANCE
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_instance" "NAT" { 
	ami = "ami-7f3d3705" 
availability_zone = "us-east-1a" 
	instance_type = "t2.micro" 
	key_name = "DAIP-BastionHost" 
	security_groups = ["${aws_security_group.NAT-instanceSG.id}"] 
	subnet_id = "${aws_subnet.NAT-Subnet.id}" 
	associate_public_ip_address = true 
	source_dest_check = false
tags {
Name = "DAIP-NAT"
}
}
