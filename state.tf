terraform {
  backend "s3" {
    bucket = "devtb-state"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}