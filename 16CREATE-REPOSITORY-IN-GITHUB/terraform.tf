provider "github" {
 token="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"
}


resource "github_repository" "terraform-first-repository" {
  name        = "first-repo-from-terraform"
  description = "My first resource from terraform(Automated)"
  visibility = "public"
  auto_init = true
} 
# to check providers use command terraform providers
# for download plugin use command terraform init (for install plug in of the providers)
# create a token from git hub account
# for create the resource or repo use command terraform apply


# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\16CREATE-REPOSITORY-IN-GITHUB>terraform apply

# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the
# following symbols:
#   + create

# Terraform will perform the following actions:

#   # github_repository.terraform-first-repository will be created
#   + resource "github_repository" "terraform-first-repository" {
#       + allow_auto_merge            = false
#       + allow_merge_commit          = true
#       + allow_rebase_merge          = true
#       + allow_squash_merge          = true
#       + archived                    = false
#       + auto_init                   = true
#       + default_branch              = (known after apply)
#       + delete_branch_on_merge      = false
#       + description                 = "My first resource from terraform(Automated)"
#       + etag                        = (known after apply)
#       + full_name                   = (known after apply)
#       + git_clone_url               = (known after apply)
#       + html_url                    = (known after apply)
#       + http_clone_url              = (known after apply)
#       + id                          = (known after apply)
#       + merge_commit_message        = "PR_TITLE"
#       + merge_commit_title          = "MERGE_MESSAGE"
#       + name                        = "first-repo-from-terraform"
#       + node_id                     = (known after apply)
#       + private                     = (known after apply)
#       + repo_id                     = (known after apply)
#       + squash_merge_commit_message = "COMMIT_MESSAGES"
#       + squash_merge_commit_title   = "COMMIT_OR_PR_TITLE"
#       + ssh_clone_url               = (known after apply)
#       + svn_url                     = (known after apply)
#       + visibility                  = "public"
#     }

# Plan: 1 to add, 0 to change, 0 to destroy.

# Do you want to perform these actions?
#   Terraform will perform the actions described above.
#   Only 'yes' will be accepted to approve.

#   Enter a value: yes

# github_repository.terraform-first-repository: Creating...
# github_repository.terraform-first-repository: Creation complete after 7s [id=first-repo-from-terraform]

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.