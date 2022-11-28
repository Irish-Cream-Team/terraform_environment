variable "location" {
  type        = string
  description = "The location for the deployment"
  default     = "northeurope"
}

variable "team_name" {
  type = string
}

variable "VMNames" {
  type = list(string)
}

variable "tags" {
  type    = map(string)
  default = {}

}



variable "global_resource_group_name" {
  type = string
}
