###new cloud vars for exercise 2

variable "vm_web_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  }

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  }

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v2"
  }

variable "vm_web_recources_core" {
  type        = number
  default     = "2"
  }

variable "vm_web_recources_memory" {
  type        = number
  default     = "2"
  }

variable "vm_web_recources_core_fraction" {
  type        = number
  default     = "20"
  description = "guaranteed vCPU, for yandex cloud - 20, 50 or 100 "
  }

variable vm_web_scheduling_policy_preemptible {
  type        = bool
  default     = "true"
  }

variable "vm_web_boot_disk_image_id" {
  type        = string
  default     = "yandex_compute_image.ubuntu.image_id"
  }

variable "vm_web_network_interface_network_id" {
  type        = string
  default     = "yandex_vpc_network.develop.id"
  }

###new cloud vars for exercise 3

variable "vm_db_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  }

variable "vm_db_name" {
  type        = string
  default     = "netology-develop-platform-db"
  }

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v2"
  }

variable "vm_db_recources_core" {
  type        = number
  default     = "2"
  }

variable "vm_db_recources_memory" {
  type        = number
  default     = "2"
  }

variable "vm_db_recources_core_fraction" {
  type        = number
  default     = "20"
  description = "guaranteed vCPU, for yandex cloud - 20, 50 or 100 "
  }

variable vm_db_scheduling_policy_preemptible {
  type        = bool
  default     = "true"
  }

variable "vm_db_boot_disk_image_id" {
  type        = string
  default     = "yandex_compute_image.ubuntu.image_id"
  }
variable "vm_db_network_interface_network_id" {
  type        = string
  default     = "yandex_vpc_network.develop.id"
  }
