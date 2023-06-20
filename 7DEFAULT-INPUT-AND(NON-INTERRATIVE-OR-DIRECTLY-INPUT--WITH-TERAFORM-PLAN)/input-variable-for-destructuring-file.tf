variable "username" {
    default = "Pisuni"
    type = string
}

variable "age" {
    default = "57"
    type = number

    # this are pre defined values if u dont provide any values this will automaticly set
    # you have to give same type in input otherwise it will give error
}