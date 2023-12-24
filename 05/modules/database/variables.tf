###database variables

variable "database_name" {
  type        = string
  default     = "test"
}


variable "folder_id" {
  type        = string
  default     = "b1gadttfn3t0cohh2hk2"
}

variable "resource_preset_id" {
  type        = string
  description = "the name of the virtual machine configuration template. The following templates are available: medium, medium-m64, medium-m96, large, xlarge"
  default     = "medium"  
}

variable "size" {
  type        = number
  default     = 2
}

variable "group_count" {
  type        = number
  default     = 1
}

variable "storage_type_id" {
  type        = string
  description = "ssd or hdd"
  default     = "ssd"
}

variable "zone" {
  type        = string
  default     = "db-ru-central1"
}

variable "user_name" {
  type        = string
}


variable "user_password" {
  type        = string
  sensitive   = true
  default     = "12345"
}

variable "user_roles" {
  type        = string
  default     = "ALL"
}

variable "network_id" {
  type        = string
}


variable "subnet_ids" {
  type        = string
}

variable "my_cluster_id" {
  type         = string
}
