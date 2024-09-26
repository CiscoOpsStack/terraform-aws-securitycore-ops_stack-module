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
}

variable "create_base_sgs" {
  description = "The key name to use for the EC2 Key Pair"
  type        = bool
  default     = false
}