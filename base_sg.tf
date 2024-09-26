module "base-mgmt-linux-sg" {
  count = var.create_base_sgs ? 1 : 0

  source = "github.com/CiscoOpsStack/terraform-aws-securitygroup-ops_stack?ref=v1.0.0"

  name        = "base-mgmt-linux-sg"
  description = "Allow traffic from these to all of the attached linux boxes"
  vpc_id      = var.vpc_id

  ingress_rules = length(var.lin_ingress_rules) == 0 ? null : var.lin_ingress_rules
  egress_rules  = length(var.lin_egress_rules) == 0 ? null : var.lin_egress_rules
}

module "base-mgmt-win-sg" {
  count = var.create_base_sgs ? 1 : 0

  source = "github.com/CiscoOpsStack/terraform-aws-securitygroup-ops_stack?ref=v1.0.0"

  name        = "base-mgmt-win-sg"
  description = "Allow traffic from these to all of the attached win boxes"
  vpc_id      = var.vpc_id

  ingress_rules = length(var.win_ingress_rules) == 0 ? null : var.win_ingress_rules
  egress_rules  = length(var.win_egress_rules) == 0 ? null : var.win_egress_rules
}