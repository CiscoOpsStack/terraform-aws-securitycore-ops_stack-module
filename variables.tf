variable "aws_region" {
  description = "The AWS region to create things in"
  type        = string
}

variable "resource_prefix" {
  description = "The prefix for the s3 bucket names"
  type        = string
}

variable "application_account_numbers" {
  description = "Account IDs for application accounts to be used in IAM"
  type        = list(string)

}

variable "dynamo_kms_key_arn" {
  description = "ARN for the CMK KMS key for DynamoDB"
  type        = string
}

variable "s3_kms_key_arn" {
  description = "ARN for the CMK KMS key for S3"
  type        = string
}

variable "vpc_id" {
  description = "ID for the VPC for the Base Security Groups"
  type        = string
  default     = ""
}

variable "create_base_sgs" {
  description = "Whether or not to create Base Security Groups"
  type        = bool
  default     = false
}

variable "lin_ingress_rules" {
  description = "The list of rules for ingress traffic. Required fields for each rule are 'protocol', 'from_port', 'to_port', and at least one of 'cidr_blocks', 'ipv6_cidr_blocks', 'security_groups', 'self', or 'prefix_list_sg'. Optional fields are 'description' and those not used from the previous list"
  type = list(object({
    protocol         = string
    from_port        = string
    to_port          = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
    prefix_list_ids  = optional(list(string), [])
    security_groups  = optional(list(string), [])
    self             = optional(bool)
    description      = optional(string, "Managed by Terraform")
  }))
  default = []
}

variable "lin_egress_rules" {
  description = "The list of rules for egress traffic. Required fields for each rule are 'protocol', 'from_port', 'to_port', and at least one of 'cidr_blocks', 'ipv6_cidr_blocks', 'security_groups', 'self', or 'prefix_list_sg'. Optional fields are 'description' and those not used from the previous list"
  type = list(object({
    protocol         = string
    from_port        = string
    to_port          = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
    prefix_list_ids  = optional(list(string), [])
    security_groups  = optional(list(string), [])
    self             = optional(bool)
    description      = optional(string, "Managed by Terraform")
  }))
  default = []
}

variable "win_ingress_rules" {
  description = "The list of rules for ingress traffic. Required fields for each rule are 'protocol', 'from_port', 'to_port', and at least one of 'cidr_blocks', 'ipv6_cidr_blocks', 'security_groups', 'self', or 'prefix_list_sg'. Optional fields are 'description' and those not used from the previous list"
  type = list(object({
    protocol         = string
    from_port        = string
    to_port          = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
    prefix_list_ids  = optional(list(string), [])
    security_groups  = optional(list(string), [])
    self             = optional(bool)
    description      = optional(string, "Managed by Terraform")
  }))
  default = []
}

variable "win_egress_rules" {
  description = "The list of rules for egress traffic. Required fields for each rule are 'protocol', 'from_port', 'to_port', and at least one of 'cidr_blocks', 'ipv6_cidr_blocks', 'security_groups', 'self', or 'prefix_list_sg'. Optional fields are 'description' and those not used from the previous list"
  type = list(object({
    protocol         = string
    from_port        = string
    to_port          = string
    cidr_blocks      = optional(list(string), [])
    ipv6_cidr_blocks = optional(list(string), [])
    prefix_list_ids  = optional(list(string), [])
    security_groups  = optional(list(string), [])
    self             = optional(bool)
    description      = optional(string, "Managed by Terraform")
  }))
  default = []
}