output "pg_fqdn" {
  value = azurerm_postgresql_flexible_server.pg.fqdn
}

output "pg_admin" {
  value = azurerm_postgresql_flexible_server.pg.administrator_login
}

output "pg_db" {
  value = azurerm_postgresql_flexible_server_database.db.name
}
