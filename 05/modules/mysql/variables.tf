###cluster variables

variable "cluster_name" {
  type        = string
}

variable "cluster_env" {
  type = string
  description = "Environment type: PRODUCTION or PRESTABLE"
  default     = "PRODUCTION"
}

variable "network_id" {
   type = string
}

variable "security_group" {
  type        = string
}

variable "deletion_protection" {
  type        = bool
  default     = "false"
}

variable "resource_preset_id" {
  type        = string
  default     = "s2.micro"
}

variable "disk_type" {
  type        = string
  default     = "network-ssd"
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "zone" {
  type        = string
  default     = "ru-central1-a"
}  

variable "subnet_ids" {
  type        = string
}

variable "version_mysql" {
  type                      = string
  default                   = "8.0"
}

variable "HA" {
  type                      = bool
  description               = "If this is a multiple instance deployment, choose `true` to deploy 2 instances"
}



