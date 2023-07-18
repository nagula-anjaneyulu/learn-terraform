resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module - Input -${var.input}"
  }
  variable "input" {}
}

