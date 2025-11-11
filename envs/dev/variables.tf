variable "pg_password" {
  description = "Senha do administrador do PostgreSQL"
  type        = string
  sensitive   = true
}

variable "allowed_ip" {
  description = "Endereço IP autorizado a acessar o PostgreSQL"
  type        = string
  default     = "0.0.0.0"
}
