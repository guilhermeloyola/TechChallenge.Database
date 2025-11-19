###############################################
# Arquivo: modules/database/outputs.tf
# EXPÕE as variáveis para o diretório raiz (envs/dev)
###############################################

output "pg_fqdn" {
  value = azurerm_postgresql_flexible_server.pg.fqdn
}

output "pg_admin" {
  value = azurerm_postgresql_flexible_server.pg.administrator_login
}

output "pg_db" {
  value = azurerm_postgresql_flexible_server_database.db.name
}

# --- Novos Outputs Adicionados ---

output "resource_group_name" {
  # O nome do Resource Group é um atributo do recurso pg
  value = azurerm_postgresql_flexible_server.pg.resource_group_name
}

output "firewall_rule_name" {
  # Referência ao recurso de firewall que você definiu no main.tf do módulo
  value = azurerm_postgresql_flexible_server_firewall_rule.allow_ip.name
}

output "pg_server_id" {
  # O ID completo do recurso PostgreSQL
  value = azurerm_postgresql_flexible_server.pg.id
}