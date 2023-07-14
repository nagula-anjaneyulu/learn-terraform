variable "sample" {
  default = "abcxyz"
}
//output "sample" {
//value = var.sample
//}

# convert lower case to uppercase
output "sample" {
  value = upper(var.sample)
}

variable "sample1" {
  default = ["abc","xyz"]

}
variable "sample2" {
  default = {
    abc = 100
    xyz = 200
  }
}

output "sample1" {
  value = element(var.sample1,0 )
}

