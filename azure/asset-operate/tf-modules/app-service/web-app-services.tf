resource "azurerm_app_service_plan" "linux" {
  name                = var.app_service_plan_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.tier # "Standard"
    size = var.size # "S1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.linux.id

  app_settings = {
    "PORT" = "3000"
  }
}
