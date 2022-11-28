module "setup" {
  source                     = "github.com/Irish-Cream-Team/Terraform_moudles.git//Setup?ref=2f73c73a2c366552f04f0f973b9c623e7966189e"
  location                   = var.location
  global_resource_group_name = var.global_resource_group_name
  team_name                  = var.team_name
}

module "vm" {
  source = "github.com/Irish-Cream-Team/Terraform_moudles.git//VM?ref=2f73c73a2c366552f04f0f973b9c623e7966189e"

  team_name = var.team_name
  count     = length(var.VMNames)
  VM = {
    name = var.VMNames[count.index]
  }

  tags = var.tags

  global_resource_group_name = var.global_resource_group_name
  location                   = var.location
  depends_on = [
    module.setup
  ]
}

