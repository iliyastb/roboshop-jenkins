variable "folders" {
  default = ["Infra", "CI-Pipeline"]
}

variable "s-jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/iliyastb/roboshop-infra.git" }
  ]
}

variable "m-jobs" {
  default = [
    { name = "roboshop", folder = "Infra", repo_url = "https://github.com/iliyastb/roboshop-infra.git" },
    { name = "frontend", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/frontend.git" },
    { name = "catalogue", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/catalogue.git" },
    { name = "user", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/user.git" },
    { name = "cart", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/cart.git" },
    { name = "shipping", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/shipping.git" },
    { name = "payment", folder = "CI-Pipeline", repo_url = "https://github.com/iliyastb/payment.git" }
  ]
}