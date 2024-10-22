terraform {
  required_providers {
    jenkins = {
      source = "registry.terraform.io/taiidani/jenkins"
    }
  }
}

data "aws_instance" "jenkins" {
  instance_id = "i-09e791412076778a9"
}

provider "jenkins" {
  server_url = "http://${data.aws_instance.jenkins.public_ip}:8080/"
  username   = data.aws_ssm_parameter.jenkins_user.value
  password   = data.aws_ssm_parameter.jenkins_pass.value
}

data "aws_ssm_parameter" "jenkins_user" {
  name = "jenkins.user"
}

data "aws_ssm_parameter" "jenkins_pass" {
  name = "jenkins.pass"
}