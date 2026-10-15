terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "forstatefilenew"
    container_name       = "tfstate"
    key                  = "tf.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"

    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ed0d050d-86c4-4b4a-8227-7630fc9179eb"
}