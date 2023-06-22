variable "userage" {
  type = map(any)
  default = {
    prince = 23
    pooja  = 25
  }
}

variable "username" {
  type = string
}

# output "userage" {
#     value = "my name is prince and my age is ${lookup(var.userage, "prince")}"
# }

output "userage" {
  value = "my name is ${var.username} and my age is ${lookup(var.userage, "${var.username}")}"
}

# YOU HAVE TO WRITE USERNAME FOR CORRESPONDING USERAGE
