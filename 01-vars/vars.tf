variable "sample_string" {
    default = "Hello World"
}
## shell scripting equivalent sample_string="Hello world"

variable "sample_number" {
    default = 100
}

#10.6 is also a number in terraform

variable "sample_boolean" {
    default = true
}

## Booleanss are true or false
# Booleans and numbers does not need to be quoted only strings are need to be quoted
#that to be with double quotes , terraform does support for single quotes

#variable types
#so far we have seen is default variable type
#we have list variable type,meaning single variable can hold multiple values

variable "sample_list" {
    default = [
    100,
    "hellodevops",
    true,
        123
    ]
}

##Data type inside the list does not matter in terraform
