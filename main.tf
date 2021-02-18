#Configure the Azure Provider
 # az ad sp create-for-rbac -n "Test_ad1" --role="Contributor" --scopes="/subscriptions/c6319983-ba39-4279-a767-705a7559fd97"


provider "azurerm" {
   subscription_id = "c6319983-ba39-4279-a767-705a7559fd97"
   client_id       = "${var.clientid}"
   client_secret   = "${var.clientsecret}"
   tenant_id       = "63ce7d59-2f3e-42cd-a8cc-be764cff5eb6"
}

provider "azurerm" {}

# Create a resource group
resource "azurerm_resource_group" "" {
  name     = "terraform"
  location = "Brazil South"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "muralidhar" {
  name                = "terraform-network"
  address_space       = ["10.0.0.0/16"]
  location            = "Brazil South"
  resource_group_name = "RG1"

  subnet {
    name           = "subnet1"
    address_prefix = "192.168.10.0/28"
  }
}

 