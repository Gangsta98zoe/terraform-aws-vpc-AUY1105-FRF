# Ejemplo funcional de uso del módulo terraform-aws-vpc-AUY1105-FRF

module "vpc" {
  source = "github.com/Gangsta98zoe/terraform-aws-vpc-AUY1105-FRF?ref=v1.0.0"

  vpc_cidr_block      = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.2.0/24"
  az_public           = "us-east-1a"
  az_private          = "us-east-1b"
  environment         = "dev"
  name_prefix         = "mi-proyecto"
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}
