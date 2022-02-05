##################### General ###################
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group
data "azurerm_resource_group" "main" {

  count = var.enabled ? 1 : 0

  name = var.resourceGroupName

}

# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id
resource "random_id" "main" {

  count = var.enabled ? 1 : 0

  byte_length = 4

}
