module "setup" {
  source                     = "github.com/Irish-Cream-Team/Terraform_moudles.git//Setup?ref=2c8e4f139494566022db07472c80fcea5f7e2e0e"
  location                   = var.location
  global_resource_group_name = var.global_resource_group_name
  team_name                  = var.team_name
  tags                       = var.tags

}

module "vm" {
  source = "github.com/Irish-Cream-Team/Terraform_moudles.git//VM?ref=2c8e4f139494566022db07472c80fcea5f7e2e0e"

  team_name = var.team_name
  count     = length(var.VM)
  VM = {
    name = var.VM[count.index].name
  }

  tags = var.tags

  global_resource_group_name = var.global_resource_group_name
  location                   = var.location
  depends_on = [
    module.setup
  ]
}

