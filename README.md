# terraform-aws-rds-mssql

This repository contains a [Terraform](https://terraform.io/) module to provision a RDS of AWS with Microsoft SQLServer instance.


Usage
--------
Module usage:

      provider "aws" {
        access_key = "${var.access_key}"
        secret_key = "${var.secret_key}"
        region     = "${var.region}"
      }

    # minimal setup, check Inputs to see the different customisation options
      module "rds-sqlserver" {
        source               = "github.com/garniev/terraform-aws-rds-mssql.git?ref=master"
        environment          = "${var.environment}"
        mssql_admin_username = "${var.sqlserver_db_admin_user}"
        mssql_admin_password = "${var.sqlserver_db_admin_password}"
        vpc_id               = "${data.aws_vpc.vpc.id}"
        vpc_subnet_ids       = ["${var.vpc_private_subnet_ids}"]
      }

Inputs
---------

  | Name | Description | Default | Required |
  |------|-------------|:-----:|:-----:|
  | environment | Environment name, used as prefix to name resources. | - | yes |
  | mssql_admin_password | Password for the administrator DB user. | - | yes |
  | mssql_admin_username | Username for the administrator DB user. | - | yes |
  | rds_allocated_storage | The allocated storage in gigabytes. | `250` | no |
  | rds_instance_class | The instance type of the RDS instance. | `db.m4.large` | no |
  | rds_multi_az | Specifies if the RDS instance is multi-AZ. | `false` | no |
  | vpc_cidr_blocks | List of CIDR blocks that will be granted to access to mssql instance. | `<list>` | no |
  | vpc_cidr_blocks_vpn | Additional list of CIDR blocks that will be granted to access to mssql instance. These list is meant to be used in the vpn security group. | `<list>` | no |
  | vpc_id | The VPC identifier where security groups are going to be applied. | - | yes |
  | vpc_subnet_ids | A list of VPC subnet identifiers. | - | yes |


Contributing
------------
Everybody is welcome to contribute. Please, see [`CONTRIBUTING`][contrib] for further information.

[contrib]: CONTRIBUTING.md

Bug Reports
-----------

Bug reports can be directly sent to authors and/or using github's issues.


-------

Copyright (c) 2017 Grey Systems ([www.greysystems.eu](http://www.greysystems.eu))

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
