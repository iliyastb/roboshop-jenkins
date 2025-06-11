terraform {
  backend "s3" {
    bucket = "devtb"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}