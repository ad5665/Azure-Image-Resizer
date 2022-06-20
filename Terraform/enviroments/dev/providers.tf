
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }

  backend "azurerm" {
      resource_group_name = "ImageResizer-dev"
      storage_account_name = "imageresizerdev"
      container_name = "tfstatedev"
      key = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

