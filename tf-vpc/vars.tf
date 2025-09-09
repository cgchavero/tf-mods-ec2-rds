variable "aws_region" {
    description = "AWS-region"
    type = string
    default = "us-east-1"
}

variable "project_name" {
    description = "Name of the project"
    type = string
}

variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string
}

variable "public_subnet_cidr" {
    description = "CIDR block for the public subnet"
    type = string
}

variable "private_subnet_cidr_1" {
    description = "CIDR block for the private subnet-1"
    type = string
}

variable "private_subnet_cidr_2" {
    description = "CIDR block for the private subnet-2"
    type = string
}

variable "availability_zone_1" {
    description = "Availability zone for the subnet_1"
    type = string
    default = "us-east-1a"
}

variable "availability_zone_2" {
    description = "Availability zone for the subnet_2"
    type = string
    default = "us-east-1b"
}
