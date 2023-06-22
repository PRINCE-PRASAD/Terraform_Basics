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


