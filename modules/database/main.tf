resource "random_string" "suffix" {
  length  = 4
  upper   = false
  special = false
}

resource "azurerm_postgresql_flexible_server" "pg" {
  name                         = "${var.project_name}-${var.env}-pg-${random_string.suffix.result}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "16"
  sku_name                     = "B_Standard_B1ms"
  storage_mb                   = 32768
  public_network_access_enabled = true

  administrator_login    = "adminTerraform"
  administrator_password = var.pg_password

  lifecycle {
    ignore_changes = [zone]
  }

  tags = {
    project = var.project_name
    env     = var.env
  }
}

resource "azurerm_postgresql_flexible_server_database" "db" {
  name      = var.pg_db_name
  server_id = azurerm_postgresql_flexible_server.pg.id
  charset   = "UTF8"
  collation = "en_US.utf8"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_ip" {
  name              = "AllowAccess"
  server_id         = azurerm_postgresql_flexible_server.pg.id
  start_ip_address  = var.allowed_ip
  end_ip_address    = var.allowed_ip
}

