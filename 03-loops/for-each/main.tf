resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
    //command = "echo ${length(var.fruits)}"
  }
}

/*variable "fruits" {
  default = {
    apple={
      name = "apple"
      count = 10
    }
    banana = {
      name  = "banana"
      count = 200
    }
    orange = {
      name = "orange"
      count = 100
    }
  }
} */

variable "fruits" {
  default = {
    apple = 10
    banana = 200
    orange = 100
  }
  }