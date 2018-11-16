provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "assmnt-proj"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "assmnt-proj"
  }
}
