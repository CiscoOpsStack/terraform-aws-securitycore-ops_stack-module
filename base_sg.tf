resource "aws_security_group" "base-mgmt-linux-sg" {
  count = var.create_base_sgs ? 1 : 0

  name        = "base-mgmt-linux-sg"
  description = "Allow traffic from these to all of the attached linux boxes"
  vpc_id      = var.vpc_id
}

resource "aws_security_group" "base-mgmt-win-sg" {
  count = var.create_base_sgs ? 1 : 0

  name        = "base-mgmt-win-sg"
  description = "Allow traffic from these to all of the attached win boxes"
  vpc_id      = var.vpc_id
}