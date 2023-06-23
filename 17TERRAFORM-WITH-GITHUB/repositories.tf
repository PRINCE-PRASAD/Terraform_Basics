resource "github_repository" "terraform-first-repository" {
  name        = "first-repo-from-terraform"
  description = "My first resource from terraform(Automated)"
  visibility  = "public"
  auto_init   = true
}

output "repo-url" {
  value = github_repository.terraform-first-repository.html_url
}

# terraform plan is use to see what changes will happen when we use terraform apply command
# to check providers use command terraform providers
# for download plugin use command terraform init (for install plug in of the providers)
# create a toke from git hub account
# for create the resource or repo use command terraform apply
# for delete any ( first repo ) repo or resource use command terraform distroy --target github_repository.terraform-first-repository
# for delete all repo or resource use command terraform destroy
# for check the configuration is valid or not use command terraform validate
# for show thw tfstate file use command terraform show (use tio see all the resource config)
# terraform refresh is command is use to check whether any changes done manully in github if happens where
# always whatever written in terrafom file is final no manual changes will be entetained\
# for check the output use the command terraform output repo-url (here repo-url is variable)
# for format the terrform file or make the file more lokkig goot with proper space use command terraform fmt
