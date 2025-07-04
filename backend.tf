terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstateazurerm"
    container_name       = "tfstate"
    key                  = "idp-mvp.terraform.tfstate"
  }
}

