# All the instance creation
resource "aws_instance" "instance" {
  for_each      = var.components
  ami           = data.aws_ami.centos.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = [data.aws_security_group.allow-all.id]

  tags = {
    Name = each.value["name"]
  }
}
## DNS Records
resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id = "Z08715033JYQ7WM1QMZBS"
  name    = "${each.value["name"]}.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance[each.value["name"]].private_ip]
}
