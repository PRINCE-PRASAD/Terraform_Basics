# variable "username" {}
#IF WE USE THIS LINE WE HAVE TO REMOVE OTHER FILE OF FOLDER

output "printkronaam" {
    value = "Hello, ${var.username}"
}


#  for windows=set, for linux=export

# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\15TAKING-INPUT-FROM-ENVIROMENTAL-OR-READ-VARIABLE-DIRECTLY-FROM-TERMINAL>set TF_VAR_username=Aditya

# C:\Users\princ\OneDrive\Desktop\Github\Terraform_Basics\15TAKING-INPUT-FROM-ENVIROMENTAL-OR-READ-VARIABLE-DIRECTLY-FROM-TERMINAL>terraform plan

# Changes to Outputs:
#   + printkronaam = "Hello, Aditya"