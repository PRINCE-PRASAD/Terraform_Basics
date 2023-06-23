resource "github_repository" "terraform-first-repository" {
  name        = "first-repo-from-terraform"
  description = "My first resource from terraform(Automated)"
  visibility = "public"
  auto_init = true
}


resource "github_repository" "terraform-second-repository" {
  name        = "second-repo-from-terraform"
  description = "My second resource from terraform(Automated)"
  visibility = "public"
  auto_init = true
}
# to check providers use command terraform providers
# for download plugin use command terraform init (for install plug in of the providers)
# create a toke from git hub account
# for create the resource or repo use command terraform apply
# for delete any ( first repo ) repo or resource use command terraform distroy --target github_repository.terraform-first-repository
# for delete all repo or resource use command terraform destroy
# for check the configuration is valid or not use command terraform validate
#
