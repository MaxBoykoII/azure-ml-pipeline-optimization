# To run the Terraform config on localhost with secrets:
# terraform plan -var-file="secrets.tfvars"

terraform {
  required_providers {
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.6.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "default" {
  name     = "rg-${var.name}-${var.environment}"
  location = var.location
}

