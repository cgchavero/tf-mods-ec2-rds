resource "aws_db_subnet_group" "subnet-rds" {
    name = "rds-subnet-group"
    subnet_ids = var.db_subnet_ids
}

resource "aws_security_group" "rds-sg" {
    name = "rds-sg"
    description = "Allow EC2 to connect to RDS"
    vpc_id = var.vpc_id

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        security_groups = [var.ec2_security_group_id]
        description = "Allow EC2 to access to RDS"
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_db_instance" "demo-rds" {
    identifier = var.db_identifier
    engine = var.db_engine
    instance_class = var.instance_class
    allocated_storage = var.allocated_storage
    username = var.username
    password = var.password
    db_subnet_group_name = aws_db_subnet_group.subnet-rds.name
    vpc_security_group_ids = [aws_security_group.rds-sg.id]
    skip_final_snapshot = true
}
