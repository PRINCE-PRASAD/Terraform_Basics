variable "users" {
  type = list
}

output "first-one" {
    value = "first user is ${var.users[1]}"
}

# follow the commands in CMD
# terraform plan
# Enter a value:  ["prince", "pooja", "pisu"]


# RESULT
# Changes to Outputs:
#   + first-one = "first user is pooja"