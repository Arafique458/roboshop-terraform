data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

# Frontend EC2 instance
resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "frontend"
  }
}
## DNS Record Frontend
resource "aws_route53_record" "frontend" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "frontend.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

# mongodb EC2 instance
resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mongodb"
  }
}
## DNS Record mongodb
resource "aws_route53_record" "mongodb" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "mongodb.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

# catalogue EC2 instance
resource "aws_instance" "catalogue" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "catalogue"
  }
}
## DNS Record catalogue
resource "aws_route53_record" "catalogue" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "catalogue.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

# redis EC2 instance
resource "aws_instance" "redis" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "redis"
  }
}
## DNS Record redis
resource "aws_route53_record" "redis {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "redis.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

# user EC2 instance
resource "aws_instance" "user" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "user"
  }
}
## DNS Record user
resource "aws_route53_record" "user" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "user.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

# shipping EC2 instance
resource "aws_instance" "shipping" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "shipping"
  }
}
## DNS Record shipping
resource "aws_route53_record" "shipping" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "shipping.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

# mysql EC2 instance
resource "aws_instance" "mysql" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
  }
}
## DNS Record mysql
resource "aws_route53_record" "mysql" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "mysql.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

# rabbitmq EC2 instance
resource "aws_instance" "rabbitmq" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "rabbitmq"
  }
}
## DNS Record rabbitmq
resource "aws_route53_record" "rabbitmq" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "rabbitmqdevopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

# cart EC2 instance
resource "aws_instance" "cart" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "cart"
  }
}
## DNS Record cart
resource "aws_route53_record" "cart" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "cart.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

# payment EC2 instance
resource "aws_instance" "payment" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "payment"
  }
}
## DNS Record payment
resource "aws_route53_record" "payment" {
  zone_id = Z08715033JYQ7WM1QMZBS
  name    = "payment.devopsdude.cloud"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}