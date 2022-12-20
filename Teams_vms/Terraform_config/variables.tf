variable "location" {
  type        = string
  description = "The location for the deployment"
  default     = "northeurope"
}

variable "team_name" {
  type        = string
  description = "The name of the team"
}

variable "VM" {
  type = list(object({
    name       = string
    public_key = optional(any)
  }))
  description = "This is a list of VMs objects, each object must contains the name of the VM and its optional to send the public key to be used to access the VM"
}

variable "tags" {
  type    = map(string)
  default = {}

}



variable "global_resource_group_name" {
  type    = string
  default = "global"

}
