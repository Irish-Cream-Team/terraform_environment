terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }


  }
<<<<<<< Updated upstream
  backend "azurerm" { 
=======
  backend "azurerm" {CONFLICT (modify/delete): Teams_vms/Vm_list/Team_Name.tfvars.json deleted in main and modified in HEAD. Version HEAD of Teams_vms/Vm_list/Team_Name.tfvars.json left in tree.
    
>>>>>>> Stashed changes
  }
}

provider "azurerm" {
  features {
    key_vault {
      recover_soft_deleted_key_vaults = false
      purge_soft_delete_on_destroy    = false
    }
  }
}

