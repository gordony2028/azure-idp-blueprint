variable "location" {
  type    = string
  default = "australiaeast"
}

variable "resource_group_name" {
  type    = string
  default = "rg-idp"
}

variable "kubeconfig_path" {
  type    = string
  default = "~/.kube/config"
}

