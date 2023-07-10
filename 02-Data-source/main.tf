//data "aws_security_group" "selected" {
 // name = "allow-all"
//}

//output "security_group_id" {
  //value=data.aws_security_group.selected.id
//}

data "aws_security_groups" "test" {}
output "all-sg" {
  value = coalesce(data.aws_securit_group.selected.id,"")
}