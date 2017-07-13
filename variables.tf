// Environment name, used as prefix to name resources.
variable "environment" {}

// The allocated storage in gigabytes.
variable "rds_allocated_storage" {
  default = "250"
}

// The instance type of the RDS instance.
variable "rds_instance_class" {
  default = "db.m4.large"
}

// Specifies if the RDS instance is multi-AZ.
variable "rds_multi_az" {
  default = "false"
}

// Username for the administrator DB user.
variable "mssql_admin_username" {}

// Password for the administrator DB user.
variable "mssql_admin_password" {}

// A list of VPC subnet identifiers.
variable "vpc_subnet_ids" {
  type = "list"
}

// The VPC identifier where security groups are going to be applied.
variable "vpc_id" {}

// List of CIDR blocks that will be granted to access to mssql instance.
variable "vpc_cidr_blocks" {
  type    = "list"
  default = []
}

// Additional list of CIDR blocks that will be granted to access to mssql instance.
// These list is meant to be used in the vpn security group.
variable "vpc_cidr_blocks_vpn" {
  type    = "list"
  default = []
}
