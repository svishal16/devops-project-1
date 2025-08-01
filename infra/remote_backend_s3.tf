terraform {
  backend "s3" {
    bucket = "dev-proj-1-rsb-654321"
    key    = "devops-project-1/terraform.tfstate"
    region = "us-east-2"
  }
}