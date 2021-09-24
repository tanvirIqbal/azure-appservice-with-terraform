provider "azurerm" {
  features {}
  subscription_id = ""
  client_id       = ""
  client_secret   = ""
  tenant_id       = ""

}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US 2"
}

resource "azurerm_app_service_plan" "example" {
  name                = "tanvir-bd-udacity-plan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "example" {
  name                = "tanvir-bd-udacity"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  

  app_settings = {
    "SOME_KEY" = "some-value"
  }
}