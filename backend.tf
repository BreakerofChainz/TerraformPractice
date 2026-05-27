terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformPractice"
    storage_account_name = "terraformpracticestg01"
    container_name       = "terraformpracticestg01blob1"
    key                  = "terraform.tfstate"

    use_azuread_auth = true
  }
}