module "sample" {
  source = "./module"
  input = "module.dummy.dummy-op"
}

module "dummy" {
  source = "./dummy"
}