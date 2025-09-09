variable "ami_id" {
    description = "AMI ID to use for the instance"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

variable "key_name" {
    description = "EC2 key pair name"
    type = string
}

variable "instance_name" {
    description = "Name of the instance"
    type = string
}

variable "subnet_id" {
    description = "Subnet id for EC2"
    type = string
}

variable "vpc_id" {
    description = "VPC ID to create the EC2 security group"
    type = string
}
