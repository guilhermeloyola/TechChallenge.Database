###############################################
# 🧾 Outputs - Variáveis de Conexão do Banco de Dados
###############################################

# O diretório raiz usa 'module.database' para acessar
# as saídas definidas dentro da pasta 'modules/database'.

# 🌐 FQDN (Fully Qualified Domain Name) do servidor PostgreSQL
output "pg_fqdn" {
  description = "Endereço completo (FQDN) do servidor PostgreSQL Flexible Server para conexão."
  # Chama o output 'pg_fqdn' definido no módulo
  value       = module.database.pg_fqdn
}

# 👤 Usuário administrador
output "pg_admin" {
  description = "Usuário administrador do PostgreSQL (Login)."
  # Chama o output 'pg_admin' definido no módulo
  value       = module.database.pg_admin
}

# 🗃️ Nome do banco de dados
output "pg_db" {
  description = "Nome do banco de dados principal criado ('techchallenge')."
  # Chama o output 'pg_db' definido no módulo
  value       = module.database.pg_db
}

# 🧱 Nome do Resource Group
output "resource_group_name" {
  description = "Nome do Resource Group onde o banco está localizado."
  # Chama o output 'resource_group_name' definido no módulo
  value       = module.database.resource_group_name
}

# 🔥 Nome da Regra de Firewall
output "firewall_rule_name" {
  description = "Nome da regra de firewall que libera o acesso para o IP configurado."
  # Chama o output 'firewall_rule_name' definido no módulo
  value       = module.database.firewall_rule_name
}

# 💾 ID completo do servidor no Azure
output "pg_server_id" {
  description = "ID completo (Azure Resource ID) do servidor PostgreSQL."
  # Chama o output 'pg_server_id' definido no módulo
  value       = module.database.pg_server_id
}