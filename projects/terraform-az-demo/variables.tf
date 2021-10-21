variable "prefix" {
  default     = "example"
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  default     = "westus2"
  description = "The Azure Region in which all resources in this example should be created."
}

variable "linux_username" {
  default = "adminuser"
}

variable "linux_userpass" {
  default = "Pass0rd!"
}