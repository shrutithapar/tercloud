locals {
  tags = {
  "name" = "terraform"
  "service" = "aws"
  }
}

variable "inst_type" {}

resource "aws_instance" "myinst" {
  ami           = var.ami_id
  instance_type = var.inst_type

  tags = local.tags
}
