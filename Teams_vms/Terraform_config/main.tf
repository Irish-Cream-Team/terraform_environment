module "setup" {
  source                     = "github.com/Irish-Cream-Team/Terraform_moudles.git//Setup?ref=da1a449ad1452e688c90c8b7121be61dfc08a34c"
  location                   = var.location
  global_resource_group_name = var.global_resource_group_name
  team_name                  = var.team_name
  tags                       = var.tags

}

module "vm" {
  source = "github.com/Irish-Cream-Team/Terraform_moudles.git//VM?ref=da1a449ad1452e688c90c8b7121be61dfc08a34c"

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

