locals {
  tags = {
  "name" = "terraform"
  "service" = "aws"
  }
}

resource "aws_instance" "myinst" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = local.tags
}
