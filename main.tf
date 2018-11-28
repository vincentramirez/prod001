//--------------------------------------------------------------------
// Modules
module "vpc" {
  source  = "app.terraform.io/vinnie-demo/vpc/aws"
  version = "1.44.0"

  cidr = "10.0.0.0/16"
  azs = ["us-east-2a", "us-east-2b"]
  private_subnets = ["10.0.0.1/24", "10.0.0.2/24"]
  create_vpc = "true"
  enable_nat_gateway = "true"
  enable_vpn_gateway = "true"
  default_vpc_enable_dns_hostnames = "true"
  default_vpc_name = "dev001"
  name = "dev001-vpc"
}
