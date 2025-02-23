resource "azurerm_app_service_plan" "linux" {
  name                = var.app_service_plan_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  sku {
    tier = var.tier # "Standard"
    size = var.size # "S1"
  }
}

# Frontend
resource "azurerm_app_service" "frontend_app_service" {
  name                = var.frontend_app_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.linux.id

  app_settings = {
    "PORT" = "3000"
  }
}

# Backend
resource "azurerm_app_service" "backend_app_service" {
  name                = var.backend_app_service_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.linux.id

  app_settings = {
    "PORT" = "5000"
    "DATABASE_URL" = ""
    "BLOB_CONNECTION_STRING" = ""
    "ASSETFUTURE_BASE_URL" = ""
    "ASSETFUTURE_AREAS_URL" = ""
    "ASSETFUTURE_ITEMS_URL" = ""
    "ASSETFUTURE_SECRET" = ""
    "IMPORT_API_SECRET" = ""
    "JWT_ISSUER" = ""
    "JWT_AUDIENCE" = ""
    "JWT_KEY" = ""
    "PASSWORD_SALT" = ""
    "ASPNETCORE_ENVIRONMENT" = ""
    "OPERATOR_ID_CLAIM_NAME" = ""
    "USERNAME_CLAIM_NAME" = ""
  }
}
