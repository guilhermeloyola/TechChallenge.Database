terraform {
  required_version = ">= 1.9.0"

  backend "azurerm" {
    resource_group_name  = "techchallenge-state-rg"
    storage_account_name = "techchallengestate"
    container_name       = "tfstate"
    key                  = "db-dev.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.10"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
