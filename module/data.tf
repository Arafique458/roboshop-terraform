# data source
data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

# declaring security groups to join too.
data "aws_security_group" "allow-all" {
  name = "allow-all"
}