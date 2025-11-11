variable "allowed_ip" {
  description = "Endereço IP autorizado a acessar o PostgreSQL (ex: 201.10.22.55 ou 0.0.0.0)"
  type        = string
  default     = "0.0.0.0"
}
