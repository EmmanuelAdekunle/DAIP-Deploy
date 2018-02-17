# --------------------------------------------------------------------------------------------------------------------
# CREATE Drupal 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Drupal1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Drupal 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Drupal2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.11.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Drools 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Drools1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Drools 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Drools2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.33.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Guvnor 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Guvnor1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Guvnor 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Guvnor2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.22.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Dexi 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Dexi1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Dexi 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Dexi2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.44.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Data 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Data1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Data 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "Data2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.55.0/24"
  map_public_ip_on_launch = "false"
}
# --------------------------------------------------------------------------------------------------------------------
# CREATE SmartSearch 1 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "SmartSearch1-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = "false"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE SmartSearch 2 SUBNET
# --------------------------------------------------------------------------------------------------------------------
resource "aws_subnet" "SmartSearch2-Subnet" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1b"
  cidr_block              = "10.0.66.0/24"
  map_public_ip_on_launch = "false"
}

