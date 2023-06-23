variable "token" {

}

variable "username" {
  default = "Prince"
}

variable "age" {
  default = 54
}

variable "city" {
  default = "kolkata"
}

# we can use console comamnd for debuging purpose
# example

# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\17TERRAFORM-WITH-GITHUB>terraform console
# > var.username
# "Prince"
# > var.age
# 54
# > var.city
# "kolkata"
# > github_repository.terraform-first-repository.html_url
# "https://github.com/PRINCE-PRASAD/first-repo-from-terraform"
# > exit
