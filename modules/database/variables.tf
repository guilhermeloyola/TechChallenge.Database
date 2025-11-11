variable "project_name" {
  type = string
}

variable "env" {
  type = string
}

variable "location" {
  type = string
}

variable "pg_db_name" {
  type = string
}

variable "pg_password" {
  type      = string
  sensitive = true
}

variable "resource_group_name" {
  type = string
}

variable "allowed_ip" {
  description = "Endereço IP autorizado a acessar o PostgreSQL"
  type        = string
  default     = "0.0.0.0"
}

