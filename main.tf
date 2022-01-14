locals {
  tags = {
  "name" = "terraform"
  "service" = "aws"
  }
}

resource "aws_instance" "myinst" {
  ami           = var.ami_id
  instance_type = var.inst_type

  tags = local.tags
}
