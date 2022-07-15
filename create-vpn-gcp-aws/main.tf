provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
}

provider "aws" {
  region     = var.aws_region
}


module "gcp-vpn" {
  source  = "build-and-run/gcp-vpn/aws"
  version = "0.2.0"

  gcp_cidr = var.gcp_cidr

  aws_region = var.aws_region
  gcp_region = var.gcp_region

  aws_vpc             = var.aws_vpc_id
  aws_sg              = var.aws_security_group
  aws_route_tables_ids =var.aws_route_tables_ids

  gcp_network        = var.gcp_network_name
  gcp_asn            = 65500
}
