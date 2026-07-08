# Módulo: terraform-aws-vpc-AUY1105-FRF

## Objetivos del repositorio
Módulo de Terraform para gestionar la creación de VPC, subredes
pública/privada, Internet Gateway y tabla de rutas en AWS.

## Propósito general
Provee la capa de red base reutilizable para cualquier infraestructura
AWS. Permite desacoplar la configuración de red del resto de módulos.

## Instrucciones básicas de uso

```bash
terraform init
terraform plan
terraform apply
```

## Recursos creados
| Recurso | Descripción |
|---|---|
| aws_vpc | Red virtual privada principal |
| aws_subnet (public) | Subred pública con IP automática |
| aws_subnet (private) | Subred privada interna |
| aws_internet_gateway | Puerta de enlace a Internet |
| aws_route_table | Tabla de rutas pública |

## Versiones
| Versión | Descripción |
|---|---|
| v0.1.0 | Estructura inicial del módulo |
| v0.2.0 | Agrega examples/ y output subnet_ids |
| v1.0.0 | Versión estable y documentada |
| v1.1.0 | Optimización: locals common_tags con merge() |
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_az_private"></a> [az\_private](#input\_az\_private) | Zona de disponibilidad para subred privada | `string` | `"us-east-1b"` | no |
| <a name="input_az_public"></a> [az\_public](#input\_az\_public) | Zona de disponibilidad para subred pública | `string` | `"us-east-1a"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Entorno de despliegue | `string` | `"dev"` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Prefijo para nombrar los recursos | `string` | `"prueba2"` | no |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | CIDR block para la subred privada | `string` | `"10.0.2.0/24"` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR block para la subred pública | `string` | `"10.0.1.0/24"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | CIDR block para la VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | ID de la subred privada |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | ID de la subred pública |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | IDs de todas las subredes creadas |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID de la VPC creada |
