module "database" {
  source = "../../modules/database"

  project_name        = "techchallenge"
  env                 = "dev"
  location            = "brazilsouth"
  resource_group_name = "rg-tech-challenge"
  pg_db_name          = "techchallenge"
  pg_password         = var.pg_password
  allowed_ip          = var.allowed_ip
}
