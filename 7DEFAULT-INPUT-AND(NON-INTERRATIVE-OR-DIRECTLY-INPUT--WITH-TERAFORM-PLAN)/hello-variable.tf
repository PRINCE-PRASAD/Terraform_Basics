# variable "username" {}
#IF WE USE THIS LINE WE HAVE TO REMOVE OTHER FILE OF FOLDER

output "print-kro-details" {
    value = "Hello, ${var.username}, your age is ${var.age}"
}


# if u don't need intraction with code and don't want to use default values
# use this
# terraform plan -var "username=prince" -var "age=54"
# for this system do not ask for value directly take the value  