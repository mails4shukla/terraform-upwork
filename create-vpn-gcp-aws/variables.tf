variable "gcp_project_id" {
  description = "CIDR group for GCP network"
  type        = string
}

variable "gcp_region" {
  description = "Region for GCP"
  type        = string
}


variable "gcp_cidr" {
  description = "CIDR group for GCP network"
  type        = string
}

variable "gcp_network_name" {
  description = "Network name for GCP"
  type        = string
}


variable "aws_region" {
  description = "Region for AWS"
  type        = string
}

variable "aws_vpc_id" {
  description = "VPC ID for AWS"
  type        = string
}

variable "aws_security_group" {
  description = "Security group for AWS Network"
  type        = string
}

variable "aws_route_tables_ids" {
  description = "Routing table ID for AWS"
  type        = list(string)
}
