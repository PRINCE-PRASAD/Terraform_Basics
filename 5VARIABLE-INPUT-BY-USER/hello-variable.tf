# variable "username" {}
#IF WE USE THIS LINE WE HAVE TO REMOVE OTHER FILE OF FOLDER

output "printkronaam" {
    value = "Hello, ${var.username}"
}