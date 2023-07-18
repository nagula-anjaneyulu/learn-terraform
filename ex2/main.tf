module "sg" {
  source = "./module"
}
module "ec2" {
  source = "./ec2"
  sg_id =module.sg.sg_id
}