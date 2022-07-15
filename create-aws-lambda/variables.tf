variable "aws_region" {
  description = "Region for AWS"
  type        = string
}

variable "aws_vpc" {
  description = "VPC ID for AWS"
  type        = string
}

variable "aws_sg" {
  description = "Security group for AWS Network"
  type        = list(string)
}


