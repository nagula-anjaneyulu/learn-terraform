resource "null_resource" "null" {
  count = 20
}
resource "null_resource" "fruits" {
  count = length(var.fruits)
}

variable "fruits" {
  default = ["apple","banana","orange"]
}