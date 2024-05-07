variable "jobs" {
  default = [
    { name = "roboshop", folder = "Infra",repo_url = "https://github.com/iliyastb/roboshop-infra.git" },
    { name = "roboshop-dev", folder = "Infra-dev",repo_url = "https://github.com/iliyastb/roboshop-infra.git" }
  ]
}