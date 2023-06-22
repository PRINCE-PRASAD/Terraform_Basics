variable "age" {
    type = number
  
}

variable "username" {
  type = string
}

output "printname" {
    value = "hello, ${var.username}, your age is ${var.age}"
}

# here file name must be terraform.tfvars where variables are defined

# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\13USE-OF-TFVARS-FILE>terraform plan

# Changes to Outputs:
#   + printname = "hello, nanaji, your age is 56"


# --------------------------------------------------------------------------------------------------
# FOR CUSTOM FILES NAMES


# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\14USE-OF-TF-VAR-CUSTOM>terraform plan -var-file=development.tfvars

# Changes to Outputs:
#   + printname = "hello, ammar, your age is 651"