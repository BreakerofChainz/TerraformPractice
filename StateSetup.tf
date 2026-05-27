resource "azurerm_resource_group" "TerraformPractice" {
  name     = "TerraformPractice"
  location = "East US"
}

resource "azurerm_storage_account" "terraformpracticestg01" {
  name                     = "terraformpracticestg01"
  resource_group_name      = azurerm_resource_group.TerraformPractice.name
  location                 = azurerm_resource_group.TerraformPractice.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  shared_access_key_enabled       = false
  allow_nested_items_to_be_public = false

}

resource "azurerm_storage_container" "terraformpracticestg01blob1" {
  name                  = "terraformpracticestg01blob1"
  storage_account_id    = azurerm_storage_account.terraformpracticestg01.id
  container_access_type = "private"
}