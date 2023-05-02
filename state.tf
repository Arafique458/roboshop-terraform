terraform {
  backend "s3" {
    bucket = "terraform-a72-002"
    key    = "roboshop-002/dev002/terraform.tfstate"
    region = "us-east-1"
  }
}