resource "null_resource" "fruits" {
  count = length(var.fruits)

  provisioner "local-exec" {
    command = "echo Fruit Name- $ {var.fruits[count.index]}"
    //command = "echo ${length(var.fruits)}"
  }
}

variable "fruits" {
  default = {
    apple=10
    banana=200
    orange=100
  }
  }