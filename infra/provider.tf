terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    databricks = {
      source  = "databricks/databricks"
      version = "~> 1.83"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate-rm561420"
    storage_account_name = "sttfstate561420cp0208"
    container_name       = "tfstate"
    key                  = "rm561420-queimadas.tfstate"
  }
}

provider "azurerm" {
  features {}
}
