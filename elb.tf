

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN ELB TO ROUTE TRAFFIC ACROSS THE Drupal AUTO SCALING GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "Drupal-elb" {
  name               = "Drupal-elb"
  security_groups    = ["${aws_security_group.Drupal-instanceSG.id}"]
#  availability_zones = "us-east-1a", "us-east-1b"
  subnets             = ["${aws_subnet.Drupal1-Subnet.id}", "${aws_subnet.Drupal2-Subnet.id}"]

  # will work on this later
   health_check {
     healthy_threshold = 5
     unhealthy_threshold = 5
     timeout = 3
     interval = 30
     target = "TCP:22"
   }

  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = "22"
    lb_protocol       = "tcp"
    instance_port     = "22"
    instance_protocol = "tcp"
  }
}


# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN ELB TO ROUTE TRAFFIC ACROSS THE Drools AUTO SCALING GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "Drools-elb" {
  name               = "Drools-elb"
  security_groups    = ["${aws_security_group.Drools-instanceSG.id}"]
 # availability_zones = ["${data.aws_availability_zones.all.names}"]
  subnets             = ["${aws_subnet.Drools1-Subnet.id}", "${aws_subnet.Drools2-Subnet.id}"]

  # will work on this later
   health_check {
     healthy_threshold = 5
     unhealthy_threshold = 5
    timeout = 3
    interval = 30
   target = "TCP:22"
   }

  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = "22"
    lb_protocol       = "tcp"
    instance_port     = "22"
    instance_protocol = "tcp"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN ELB TO ROUTE TRAFFIC ACROSS THE Guvnor AUTO SCALING GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "Guvnor-elb" {
  name               = "Guvnor-elb"
  security_groups    = ["${aws_security_group.Guvnor-instanceSG.id}"]
 # availability_zones = ["${data.aws_availability_zones.all.names}"]
  subnets             = ["${aws_subnet.Guvnor1-Subnet.id}", "${aws_subnet.Guvnor2-Subnet.id}"]

  # will work on this later
   health_check {
     healthy_threshold = 5
    unhealthy_threshold = 5
   timeout = 3
   interval = 30
  target = "TCP:22"
  }

  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = "22"
    lb_protocol       = "tcp"
    instance_port     = "22"
    instance_protocol = "tcp"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN ELB TO ROUTE TRAFFIC ACROSS THE Dexi AUTO SCALING GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "Dexi-elb" {
  name               = "Dexi-elb"
  security_groups    = ["${aws_security_group.Dexi-instanceSG.id}"]
 # availability_zones = ["${data.aws_availability_zones.all.names}"]
  subnets             = ["${aws_subnet.Dexi1-Subnet.id}", "${aws_subnet.Dexi2-Subnet.id}"]

  # will work on this later
   health_check {
    healthy_threshold = 5
    unhealthy_threshold = 5
    timeout = 3
    interval = 30
    target = "TCP:22"
  }

  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = "22"
    lb_protocol       = "tcp"
    instance_port     = "22"
    instance_protocol = "tcp"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE AN ELB TO ROUTE TRAFFIC ACROSS THE Data AUTO SCALING GROUP
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_elb" "Data-elb" {
  name               = "Data-elb"
  security_groups    = ["${aws_security_group.Data-instanceSG.id}"]
 # availability_zones = ["${data.aws_availability_zones.all.names}"]
  subnets             = ["${aws_subnet.Data1-Subnet.id}", "${aws_subnet.Data2-Subnet.id}"]

  # will work on this later
   health_check {
     healthy_threshold = 5
     unhealthy_threshold = 5
     timeout = 3
     interval = 30
     target = "TCP:22"
   }

  # This adds a listener for incoming HTTP requests.
  listener {
    lb_port           = "22"
    lb_protocol       = "tcp"
    instance_port     = "22"
    instance_protocol = "tcp"
  }
}

