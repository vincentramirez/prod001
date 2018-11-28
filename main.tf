//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/vinnie-demo/vpc/aws"
  version = "1.44.0"

  cidr = "10.0.0.0/16"
  create_vpc = "true"
  default_vpc_enable_dns_hostnames = "true"
  default_vpc_name = "dev001"
  name = "dev001-vpc"
}