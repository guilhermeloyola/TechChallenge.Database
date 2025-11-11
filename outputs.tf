output "pg_fqdn" {
  description = "FQDN do servidor PostgreSQL"
  value       = module.database.pg_fqdn
}

output "pg_admin" {
  description = "Usuário administrador"
  value       = module.database.pg_admin
}

output "pg_db" {
  description = "Nome do banco criado"
  value       = module.database.pg_db
}
