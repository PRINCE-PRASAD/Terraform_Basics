# variable "username" {}
#IF WE USE THIS LINE WE HAVE TO REMOVE OTHER FILE OF FOLDER

output "print-kro-naam" {
    value = "Hello, ${var.username}"
}


# teraform plan -var username="Pooja"
# for this system do not ask for value directly take the value