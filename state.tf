terraform {
  backend "s3" {
    bucket = "terraform-a72"
    key    = "roboshop-001/dev/terraform.tfstate"
    region = "us-east-1"
  }
}