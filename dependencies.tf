##################### General ###################
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id
resource "random_id" "main" {

  count = var.enabled ? 1 : 0

  byte_length = 4

}
