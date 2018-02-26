
# ---------------------------------------------------------------------------------------------------------------------
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE Drupal ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "Drupal-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-0d6bf15c7bbd6fc12"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.Drupal-instanceSG.id}"]
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
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE Drools ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "Drools-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-0d6bf15c7bbd6fc12"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.Drools-instanceSG.id}"]
  key_name      = "DAIP-BastionHost"

# This device contains homePath
  ebs_block_device {
    device_name           = "/dev/xvdb"
    volume_size           = 8
    volume_type           = "gp2"
#   encrypted             = true
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
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE Guvnor ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "Guvnor-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-0d6bf15c7bbd6fc12"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.Guvnor-instanceSG.id}"]
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
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE Dexi ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "Dexi-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-0d6bf15c7bbd6fc12"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.Dexi-instanceSG.id}"]
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
# CREATE A LAUNCH CONFIGURATION THAT DEFINES EACH EC2 INSTANCE IN THE SmartSearch ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_launch_configuration" "SmartSearch-LG" {
  # AWS Linux AMI (HVM), SSD Volume Type in us-east-1
  image_id      = "ami-0d6bf15c7bbd6fc12"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.SmartSearch-instanceSG.id}"]
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

