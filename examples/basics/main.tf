provider "aws" {
  region = "us-east-1"
}

module "terraform_vpc" {
  source                = "../../tf-vpc"
  vpc_cidr              = "10.0.0.0/16"
  public_subnet_cidr    = "10.0.1.0/24"
  private_subnet_cidr_1 = "10.0.2.0/24"
  private_subnet_cidr_2 = "10.0.3.0/24"
  project_name          = "demo-project"
}

module "terraform_ec2" {
  source        = "../../tf-ec2"
  vpc_id        = module.terraform_vpc.vpc_id
  subnet_id     = module.terraform_vpc.public_subnet_id
  ami_id        = "ami-0360c520857e3138f"
  instance_type = "t2.micro"
  key_name      = "terraform_module"
  instance_name = "demo_instance"
}

module "rds" {
  source = "../../tf-rds"
  vpc_id = module.terraform_vpc.vpc_id
  db_subnet_ids = [
    module.terraform_vpc.private_subnet_id_1,
    module.terraform_vpc.private_subnet_id_2
  ]
  ec2_security_group_id = module.terraform_ec2.security_group_id

  # DB Instance setting
  db_identifier     = "myapp-db"
  db_engine         = "mysql"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  # DB Credentials
  username = "appdb"
  password = "SuperSecret123!"
}
