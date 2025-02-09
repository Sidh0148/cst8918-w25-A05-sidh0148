variable "labelPrefix" {
  description = "Prefix for all resources"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9-_().]+$", var.labelPrefix))
    error_message = "The labelPrefix may only contain letters, numbers, dashes, underscores, parentheses, and periods."
  }
}


variable "region" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureadmin"  # Change if using a different Azure VM user
}

variable "ssh_public_key" {
  description = "Path to the SSH public key file"
  type        = string
  default     = "/home/guest/.ssh/id_rsa.pub"  # Update with actual Linux username
}
