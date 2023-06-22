variable "age" {
    type = number
  
}

variable "username" {
  type = string
}

output "printname" {
    value = "hello, ${var.username}, your age is ${var.age}"
}



# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\12USE-OF-DYNAMIC-MAP>terraform plan
# var.age
#   Enter a value: 45

# var.username
#   Enter a value: papa


# Changes to Outputs:
#   + printname = "hello, papa, your age is 45"


# FOR NON INTERRACTIVE
# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\12USE-OF-DYNAMIC-MAP>terraform plan -var age=21 -var username=pisu

# Changes to Outputs:
#   + printname = "hello, pisu, your age is 21"