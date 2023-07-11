resource "null_resource" "fruits" {

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
    //command = "echo ${length(var.fruits)}"
  }
}
resource "null_resource" "fruits1" {

  for_each = var.fruits1

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.value["name"]} - ${each.value["count"]}"
    //command = "echo ${length(var.fruits)}"
  }
}
variable "fruits1" {
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
}

variable "fruits" {
  default = {
    apple = 10
    banana = 200
    orange = 100
  }
  }
// for_each on list
variable "vegetables" {
  default = ["tomato","beans"]
}

resource "null_resource" "vegetables" {
  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo fruit name - ${each.key}"
  }
}