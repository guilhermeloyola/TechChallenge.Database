###############################################
# 🧾 Outputs - Módulo Database (PostgreSQL)
###############################################

# 🌐 FQDN do servidor PostgreSQL
output "pg_fqdn" {
  description = "Endereço completo (FQDN) do servidor PostgreSQL Flexible Server"
  value       = azurerm_postgresql_flexible_server.pg.fqdn
}

# 👤 Usuário administrador
output "pg_admin" {
  description = "Usuário administrador do PostgreSQL"
  value       = azurerm_postgresql_flexible_server.pg.administrator_login
}

# 🗃️ Nome do banco criado
output "pg_db" {
  description = "Nome do banco de dados criado"
  value       = azurerm_postgresql_flexible_server_database.db.name
}

# 🔥 (Opcional) Regras de firewall criadas
output "firewall_rule_name" {
  description = "Nome da regra de firewall que libera acesso"
  value       = azurerm_postgresql_flexible_server_firewall_rule.allow_ip.name
}

# 🧱 (Opcional) Resource group onde o banco foi criado
output "resource_group_name" {
  description = "Nome do Resource Group do banco"
  value       = azurerm_postgresql_flexible_server.pg.resource_group_name
}

# 💾 (Opcional) ID completo do servidor — útil para integrações
output "pg_server_id" {
  description = "ID completo do servidor PostgreSQL"
  value       = azurerm_postgresql_flexible_server.pg.id
}
