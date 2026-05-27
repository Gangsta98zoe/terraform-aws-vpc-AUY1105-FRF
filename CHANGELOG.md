# Changelog — terraform-aws-vpc-AUY1105-FRF

Todos los cambios relevantes de este módulo se documentan aquí.
Formato basado en [Keep a Changelog](https://keepachangelog.com/es/1.0.0/).

---

## [v1.0.0] - 2026-05-27
### Added
- Versión estable y funcional del módulo de red
- Documentación completa en README.md con terraform-docs
- Carpeta examples/ con ejemplo funcional de uso

### Changed
- Output subnet_ids agregado para cumplir estándar mínimo del módulo

---

## [v0.2.0] - 2026-05-27
### Added
- Carpeta examples/ con README.md y main.tf de ejemplo
- Output subnet_ids (lista de subredes creadas)

---

## [v0.1.0] - 2026-05-27
### Added
- Estructura inicial del módulo: main.tf, variables.tf, outputs.tf, versions.tf
- Recursos: aws_vpc, aws_subnet (public/private), aws_internet_gateway,
  aws_route_table, aws_route_table_association
