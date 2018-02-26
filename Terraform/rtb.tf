
# --------------------------------------------------------------------------------------------------------------------
# CREATE Drupal ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Drupal1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Drupal-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Drupal1-Subnet.id}"
  route_table_id = "${aws_route_table.Drupal1-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Drupal ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Drupal2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Drupal-RTB-Associate2" {
  subnet_id      = "${aws_subnet.Drupal2-Subnet.id}"
  route_table_id = "${aws_route_table.Drupal2-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Drools ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Drools1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Drools-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Drools1-Subnet.id}"
  route_table_id = "${aws_route_table.Drools1-RTB.id}"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE Drools ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Drools2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Drools-RTB-Associate2" {
  subnet_id      = "${aws_subnet.Drools2-Subnet.id}"
  route_table_id = "${aws_route_table.Drools2-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Dexi ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Dexi1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Dexi-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Dexi1-Subnet.id}"
  route_table_id = "${aws_route_table.Dexi1-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Dexi ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Dexi2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Dexi-RTB-Associate2" {
  subnet_id      = "${aws_subnet.Dexi2-Subnet.id}"
  route_table_id = "${aws_route_table.Dexi2-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Guvnor ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Guvnor1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Guvnor-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Guvnor1-Subnet.id}"
  route_table_id = "${aws_route_table.Guvnor1-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Guvnor ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Guvnor2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Guvnor-RTB-Associate2" {
  subnet_id      = "${aws_subnet.Guvnor2-Subnet.id}"
  route_table_id = "${aws_route_table.Guvnor2-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Data ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Data1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Data-RTB-Associate1" {
  subnet_id      = "${aws_subnet.Data1-Subnet.id}"
  route_table_id = "${aws_route_table.Data1-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE Data ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "Data2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "Data-RTB-Associate2" {
  subnet_id      = "${aws_subnet.Data2-Subnet.id}"
  route_table_id = "${aws_route_table.Data2-RTB.id}"
}

# --------------------------------------------------------------------------------------------------------------------
# CREATE SmartSearch ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "SmartSearch1-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "SmartSearch-RTB-Associate1" {
  subnet_id      = "${aws_subnet.SmartSearch1-Subnet.id}"
  route_table_id = "${aws_route_table.SmartSearch1-RTB.id}"
}


# --------------------------------------------------------------------------------------------------------------------
# CREATE SmartSearch ROUTE TABLE
# --------------------------------------------------------------------------------------------------------------------
resource "aws_route_table" "SmartSearch2-RTB" {
  vpc_id = "${aws_vpc.DAIP-VPC.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
}

resource "aws_route_table_association" "SmartSearch-RTB-Associate2" {
  subnet_id      = "${aws_subnet.SmartSearch2-Subnet.id}"
  route_table_id = "${aws_route_table.SmartSearch2-RTB.id}"
}






