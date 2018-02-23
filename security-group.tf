# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Drupal ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Drupal-instanceSG" {
  name = "Drupal-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE Drupal ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Drupal-elb" {
  name = "Drupal-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Drools ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Drools-instanceSG" {
  name = "Drools-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE Drools ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Drools-elb" {
  name = "Drools-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Guvnor ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Guvnor-instanceSG" {
  name = "Guvnor-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"
 # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE Guvnor ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Guvnor-elb" {
  name = "Guvnor-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Dexi ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Dexi-instanceSG" {
  name = "Dexi-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

 # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE Dexi ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Dexi-elb" {
  name = "Dexi-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE Data ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Data-instanceSG" {
  name = "Data-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

 # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE Data ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "Data-elb" {
  name = "Data-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE SECURITY GROUP THAT'S APPLIED TO EACH EC2 INSTANCE IN THE SmartSearch ASG
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "SmartSearch-instanceSG" {
  name = "SmartSearch-SG"
   vpc_id = "${aws_vpc.DAIP-VPC.id}"

 # Inbound SSH
  ingress {
    from_port   = "0"
    to_port     = "65535"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTP
  ingress {
    from_port   = "80"
    to_port     = "80"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

# Inbound HTTPS
  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
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
# CREATE A SECURITY GROUP THAT CONTROLS WHAT TRAFFIC CAN GO IN AND OUT OF THE SmartSearch ELB
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_security_group" "SmartSearch-elb" {
  name = "SmartSearch-elb"
  vpc_id = "${aws_vpc.DAIP-VPC.id}"

  # Allow all outbound
  egress {
    from_port   = "0"
    to_port     = "0"
    # -1 is semantically equivalent to "all." So all protocols are allowed
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


