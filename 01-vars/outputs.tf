
output "sample_string" {
  value=var.sample_string
}

##In above case we are printing just variable, If variable is a combination of some
#strings then following is the syntax,${}is mandatory if we include the variable inside a string

output "sample_string1" {
  value="value of sample_string=${var.sample_string}"
}