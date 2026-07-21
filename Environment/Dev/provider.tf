terraform {
    required_providers{
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.81.0"
        }
    }

    backend "azurerm" {
        resource_group_name = "rg-app-dev"
        storage_account_name = "stgtfstatedevs"
        container_name = "cont-tfstate-dev"
        key = "dev.tfstate"

    }
}

provider "azurerm" {
    features{}
}