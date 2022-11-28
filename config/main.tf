module "setup" {
  source                     = "github.com/Irish-Cream-Team/Terraform_moudles.git//Setup?ref=019bf4188efad4bacf3a5bc3856a6c12bc490ee6"
  location                   = var.location
  global_resource_group_name = var.global_resource_group_name
  team_name                  = var.team_name
}

module "vm" {
  source = "github.com/Irish-Cream-Team/Terraform_moudles.git//VM?ref=019bf4188efad4bacf3a5bc3856a6c12bc490ee6"

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

