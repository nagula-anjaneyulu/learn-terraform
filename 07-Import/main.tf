resource "aws_instance" "workstation" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t3.small"
  tags = {
     "Name" = "workstation"
  }

}

output "private_ip" {
  value = "aws_instance.workstation.  private_ip"
}