# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR DRUPAL
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "Drupal-ASG" {
  launch_configuration = "${aws_launch_configuration.Drupal-LG.name}"
   availability_zones = ["us-east-1a", "us-east-1b"]
  vpc_zone_identifier = ["${aws_subnet.Drupal1-Subnet.id}", "${aws_subnet.Drupal2-Subnet.id}"]

  min_size = 2
  max_size = 2

  load_balancers            = ["${aws_elb.Drupal-elb.name}"]
 health_check_type         = "ELB"
  wait_for_capacity_timeout = "5m"

  tag {
    key                 = "Name"
    value               = "Drupal-ASG"
    propagate_at_launch = true
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR DROOLS
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "Drools-ASG" {
  launch_configuration = "${aws_launch_configuration.Drools-LG.name}"
   availability_zones = ["us-east-1a", "us-east-1b"]
  vpc_zone_identifier = ["${aws_subnet.Drools1-Subnet.id}", "${aws_subnet.Drools2-Subnet.id}"]

  min_size = 2
  max_size = 2

 load_balancers            = ["${aws_elb.Drools-elb.name}"]
 health_check_type         = "ELB"
 wait_for_capacity_timeout = "5m"

  tag {
   key                 = "Name"
   value               = "Drools-ASG"
   propagate_at_launch = true
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR Dexi
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "Dexi-ASG" {
  launch_configuration = "${aws_launch_configuration.Dexi-LG.name}"
   availability_zones = ["us-east-1a", "us-east-1b"]
  vpc_zone_identifier = ["${aws_subnet.Dexi1-Subnet.id}", "${aws_subnet.Dexi2-Subnet.id}"]

  min_size = 2
  max_size = 2

 load_balancers            = ["${aws_elb.Dexi-elb.name}"]
 health_check_type         = "ELB"
 wait_for_capacity_timeout = "5m"

  tag {
    key                 = "Name"
    value               = "Dexi-ASG"
    propagate_at_launch = true
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR Guvnor
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "Guvnor-ASG" {
  launch_configuration = "${aws_launch_configuration.Guvnor-LG.name}"
   availability_zones = ["us-east-1a", "us-east-1b"]
  vpc_zone_identifier = ["${aws_subnet.Guvnor1-Subnet.id}", "${aws_subnet.Guvnor2-Subnet.id}"]

  min_size = 2
  max_size = 2

 load_balancers            = ["${aws_elb.Guvnor-elb.name}"]
 health_check_type         = "ELB"
 wait_for_capacity_timeout = "5m"

  tag {
    key                 = "Name"
    value               = "Guvnor-ASG"
    propagate_at_launch = true
  }
}
# ---------------------------------------------------------------------------------------------------------------------
# CREATE THE AUTO SCALING GROUP FOR SmartSearch
# ---------------------------------------------------------------------------------------------------------------------
resource "aws_autoscaling_group" "SmartSearch-ASG" {
  launch_configuration = "${aws_launch_configuration.SmartSearch-LG.name}"
   availability_zones = ["us-east-1a", "us-east-1b"]
  vpc_zone_identifier = ["${aws_subnet.SmartSearch1-Subnet.id}", "${aws_subnet.SmartSearch2-Subnet.id}"]

  min_size = 2
  max_size = 2

 load_balancers            = ["${aws_elb.SmartSearch-elb.name}"]
 health_check_type         = "ELB"
 wait_for_capacity_timeout = "5m"

  tag {
    key                 = "Name"
    value               = "SmartSearch-ASG"
    propagate_at_launch = true
  }
}

