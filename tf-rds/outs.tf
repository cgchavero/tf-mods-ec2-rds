output "rds_endpoint" {
    description = "The endpoint of the RDS instance"
    value = aws_db_instance.demo-rds.endpoint
}

output "rds_port" {
    description = "The port the RDS is listening to"
    value = aws_db_instance.demo-rds.port
}

output "rds_username" {
    description = "The master username for the RDS instance"
    value = aws_db_instance.demo-rds.username
}

output "rds_edb_name" {
    description = "The DB name"
    value = aws_db_instance.demo-rds.db_name
}

output "rds_instance_id" {
    description = "The RDS instance identifier"
    value = aws_db_instance.demo-rds.id
}

output "rds_security_group_id" {
    description = "Security group ID associated with the RDS instance"
    value = aws_db_subnet_group.subnet-rds.id
}
