# Ejemplo de uso — Módulo VPC

Este ejemplo muestra cómo utilizar el módulo `terraform-aws-vpc-AUY1105-FRF`
para crear una red base en AWS.

## Qué crea este ejemplo
- Una VPC con CIDR 10.0.0.0/16
- Subred pública en us-east-1a
- Subred privada en us-east-1b
- Internet Gateway y tabla de rutas pública

## Cómo ejecutar

```bash
cd examples/
terraform init
terraform plan
terraform apply
terraform destroy
```

## Requisitos
- Terraform >= 1.0.0
- AWS CLI configurado con credenciales válidas
