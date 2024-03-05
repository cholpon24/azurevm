# terraform {
#   required_version = ">=0.12"

#   required_providers {
#     azapi = {
#       source  = "azure/azapi"
#       version = "~>1.5"
#     }
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~>2.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = "~>3.0"
#     }
#   }
# }

# provider "azurerm" {
#   features {}

#   subscription_id = "e51129db-8114-4b4e-82f0-a5b20753a623"
#   tenant_id       = "5998536d-86eb-4576-800d-71ef0638d58a"
# #   client_id       = ""
# }

# Define Terraform provider
terraform {
  required_version = ">= 1.3"
  backend "azurerm" {
    resource_group_name  = "kopicloud-tfstate-rg1"
    storage_account_name = "kopicloudiactest1"
    container_name       = "core-tfstate"
    key                  = "actions.tfstate"
  }
  required_providers {
    azurerm = {
      version = "~>3.2"
      source  = "hashicorp/azurerm"
    }
  }
}
# Configure the Azure provider
provider "azurerm" { 
  subscription_id = "e51129db-8114-4b4e-82f0-a5b20753a623"
  client_id       = "268a07c9-3e0a-44c3-83cb-eeb45c566684"
  client_secret   = "T4m8Q~vgCi-YIylm2UXitAwjDuVpUYH1HZMMeaFc"
  tenant_id       = "5998536d-86eb-4576-800d-71ef0638d58a"
  features {} 

}
