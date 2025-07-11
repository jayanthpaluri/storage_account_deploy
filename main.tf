terraform {
  backend "azurerm" {
    resource_group_name  = "terraformprac"
    storage_account_name = "terraformstorge"
    container_name       = "storagefiles"
    key                  = "dev.teraformm.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "Rg" {
  source   = "./modules/resource_group"
  Rgname   = var.Rgname
  location = var.location
}

module "sa" {
  source   = "./modules/storage_account"
  saname   = var.saname
  Rgname   = var.Rgname
  location = var.location
}