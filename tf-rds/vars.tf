variable "db_identifier" {
    description = "Unique idetnifier for the RDS instance"
    type = string
}

variable "db_engine" {
    description = "The DB engine to be used"
    type = string
}

variable "db_engine_version" {
    description = "The DB engine version to be used"
    type = string
}

variable "instance_class" {
    description = "The instance class to be used"
    type = string
}

variable "allocated_storage" {
    description = "The storage to be allocated to the RDS instance"
    type = string
}

variable "username" {
    description = "Username"
    type = string
}

variable "password" {
    description = "Password"
    type = string
}

variable "db_subnet_ids" {
    description = "The subnet ID (private for the RDS deployed)"
    type = list(string)
}

variable "vpc_id" {
    description = "ID of the VPC where the RDS is deployed"
    type = string
}

variable "ec2_security_group_id" {
    description = "Security group ID of the EC2 instance that should access the RDS"
    type = string
}
