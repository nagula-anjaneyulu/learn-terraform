resource "null_resource" "nothing" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}

resource "null_resource" "nothing1" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}

resource "null_resource" "nothing2" {
  provisioner "local-exec" {
    command = "echo hello from module"
  }
}