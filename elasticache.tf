variable "namespace" {
  description = "FEMA DAIP Default namespace"
  default = "FEMA DAIP"
}

variable "cluster_id" {
  description = "Id to assign the new cluster"
  default = "DAIP-Elasticache-1"
}

variable "node_groups" {
  description = "Number of node groups to create in the cluster"
  default     = 3
}
resource "aws_subnet" "DAIP-Elasticache" {
  vpc_id                  = "${aws_vpc.DAIP-VPC.id}"
  availability_zone       = "us-east-1a"
  cidr_block              = "10.0.7.0/24"
  map_public_ip_on_launch = true

  tags {
    "Name" = "${var.namespace}"
  }
}

resource "aws_elasticache_replication_group" "default" {
  replication_group_id          = "${var.cluster_id}"
  replication_group_description = "Redis cluster for FEMA DAIP"
 
  node_type            = "cache.t2.micro"
  port                 = 6379
  parameter_group_name = "default.redis3.2.cluster.on"
 
  snapshot_retention_limit = 5
  snapshot_window          = "00:00-05:00"
 
  subnet_group_name = "DAIP-Elasticache"
 
  automatic_failover_enabled = true
 
  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = "${var.node_groups}"
  }
}
