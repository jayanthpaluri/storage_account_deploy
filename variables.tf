variable "Rgname" {
  description = "Resource Group Name"
  default     = "github-action-rg"
  type        = string
}

variable "location" {
  description = "Azure Region"
  default     = "East US"
  type        = string
}

variable "saname" {
  description = "Storage Account Name"
  default     = "githubactionsa01"
  type        = string
}