bucket_name = "dev-proj-1-rsb-654321"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-us-east-2-vpc"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-east-2a", "us-east-2b"]

public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKmU98FnA9sUjhSmdoSJUyJcNyvLVeB4MG01lebnHGpV Vishal Shrivastava@Vishal-PC24"
ec2_ami_id     = "ami-020cba7c55df1f615"

ec2_user_data_install_apache = ""

domain_name = "svishal.xyz"

key_name = "aws_key"