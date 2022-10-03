terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "uriel-sandbox" {
  name     = "uriel-sandbox-resources"
  location = "north Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "uriel-vnet01" {
  name                = "uriel-vnet01-network"
  resource_group_name = azurerm_resource_group.uriel-sandbox.name
  location            = azurerm_resource_group.uriel-sandbox.location
  address_space       = ["172.16.0.0/16"]

}

# create a subnet virtual network within the resource group

resource "azurerm_subnet" "admin" {
    name                    = "admin-subnet"
    resource_group_name     = "azurerm_resource_group.uriel-sandbox.name"
    virtual_network_name    = "azurerm_virtual_network.uriel-vnet01.name"
    adress_prefixes         = ["172.16.0.0/24]
}

resource "azurerm_subnet" "aks" {
    name                    = "aks-subnet"
    resource_group_name     = "azurerm_resource_group.uriel-sandbox.name"
    virtual_network_name    = "azurerm_virtual_network.uriel-vnet01.name"
    adress_prefixes         = ["172.0.0.0/19]
}

