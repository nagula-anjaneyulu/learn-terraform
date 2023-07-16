resource "null_resource" "provisioner" {

  depends_on = [aws_instance.instance, aws_route53_record.records]
  for_each   = var.components
  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "centos"
      password = "DevOps321"
      host     = aws_instance.instance[each.value["name"]].private_ip
    }

    inline = [
      // i have list of commands
      "rm -rf roboshop-shell",
      "git clone https://github.com/nagula-anjaneyulu/roboshop-shell",
      "cd roboshop-shell",
      "sudo bash ${each.value["name"]}.sh ${lookup(each.value,"password","null")}"
    ]
  }
}
