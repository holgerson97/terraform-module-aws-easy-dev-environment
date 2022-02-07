#################### General ####################
variable "enabled" {
  description = "Enables the module to create any resources."
  type        = bool
  default     = true
  sensitive   = false
}

variable "naming" {
  description = "Naming conventions applied on resources deployed by this module."
  type        = string
  default     = "default"
  sensitive   = false
}

variable "tags" {
  description = "Tags applied on all resources created by this module."
  type        = map(any)
  default     = {}
  sensitive   = false
}

################## Dependencies #################

#################### Instances ##################
variable "serverCount" {
  description = "Number of instances to create, that are going to be named server."
  type        = number
  default     = 1
  sensitive   = false
}

variable "serverBlueprintID" {
  description = "ID of the blueprint to use for the server instances."
  type        = string
  sensitive   = false
}

variable "serverBundleID" {
  description = "ID of the bundle to use for the server instances."
  type        = string
  sensitive   = false
}

variable "serverKeyPairName" {
  description = "Name of the key pair to use for the server instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "serverUserData" {
  description = "User data to be applied to the server instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "clientCount" {
  description = "Number of instances to create, that are going to be named client."
  type        = number
  default     = 0
  sensitive   = false
}

variable "clientBlueprintID" {
  description = "ID of the blueprint to use for the client instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "clientBundleID" {
  description = "ID of the bundle to use for the client instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "clientKeyPairName" {
  description = "Name of the key pair to use for the client instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "clientUserData" {
  description = "User data to be applied to the client instances."
  type        = string
  default     = null
  sensitive   = false
}

variable "availabilityZone" {
  description = "(Required) The availability zone where the resoruces are going to be build."
  type        = string
  sensitive   = false
}

#################### Key Pair ###################
locals {
  keyPairEnabled = var.keyPairPGPKey != null || var.keyPairPublicKey != null ? true : false
}

variable "keyPairPGPKey" {
  description = "PGP key to be used to create the key pair."
  type        = string
  default     = null
  sensitive   = false
}

variable "keyPairPublicKey" {
  description = "Public key to be used to create the key pair."
  type        = string
  default     = null
  sensitive   = false
}

################## Public Ports #################
variable "serverPublicPorts" {
  description = "(Optional) The ports that should be opened on the server instances."
  type = list(object({
    protocol  = string
    from_port = number
    to_port   = number
  }))
  default = [
    { protocol = "tcp", from_port = 0, to_port = 65535 }
  ]
  sensitive = false
}

variable "clientPublicPorts" {
  description = "(Optional) The ports that should be opened on the client instances."
  type = list(object({
    protocol  = string
    from_port = number
    to_port   = number
  }))
  default   = null
  sensitive = false
}