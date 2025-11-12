terraform {
  backend "azurerm" {
    resource_group_name  = "techchallenge-state-rg"
    storage_account_name = "techchallengestate"
    container_name       = "tfstate"
    key                  = "db-dev.tfstate"
  }
}