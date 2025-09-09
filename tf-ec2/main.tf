resource "aws_instance" "web" {
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    key_name = var.key_name

    vpc_security_group_ids = [ aws_security_group.ec2-sg.id ]

    tags = {
        Name = var.instance_name
    }
}

resource "aws_security_group" "ec2-sg" {
    name = "ec2_security_group"
    description = "Security group for the ec2_instance"
    vpc_id = var.vpc_id

    #Allow InBound SSH
    ingress {
        description = "Allow SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
