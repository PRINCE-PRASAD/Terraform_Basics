

output "first-one" {
    value = "${join(",",var.users)}"
}

output "second-one" {
    value = "${join("--->",var.users)}"
}

output "third-one" {
    value = "${upper(var.users[0])}"
} 

output "fourth-one" {
    value = "${lower(var.users[0])}"
}

output "fifth-one" {
    value = "${title(var.users[1])}"
}



# Changes to Outputs:
#   + fifth-one  = "Pooja"
#   + first-one  = "Prince,pooja,Pisu"
#   + fourth-one = "prince"
#   + second-one = "Prince--->pooja--->Pisu"
#   + third-one  = "PRINCE"