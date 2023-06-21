

output "first-one" {
    value = "first user is ${(var.users[1])}"
}

# follow the commands in CMD
# terraform plan
# Enter a value:  ["prince", "pooja", "pisu"]

# RESULT
# Changes to Outputs:
#   + first-one = "first user is pooja"


# for non interative mode or one time input (not using the default)
# terraform plan -var 'users=["prince","adi","pisu"]'  --- right now not working 