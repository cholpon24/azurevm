terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "e51129db-8114-4b4e-82f0-a5b20753a623"
  tenant_id       = "5998536d-86eb-4576-800d-71ef0638d58a"
  client_id       = ""
}