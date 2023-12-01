###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

variable "vms_ssh_root_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCgT8Ny1LD7hTjTan3NOKzgpZ9FEJC7+G7Zfm+bs+9bXZhQ/B6gwjJh0VI6RsVo2wZKsosIc2DZogA+NlWbefQfiC5RKtt/iZMEofBHkhCgxUEHdUEqUkaC7AFfkr4ozrYPKlQ$
#  description = "ssh-keygen -t ed25519"
}

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

variable "vm_web_scheduling_policy_preemptible {
  type        = bool
  default     = "true"

variable "vm_web_boot_disk_image_id" {
  type        = string
  default     = "data.yandex_compute_image.ubuntu.image_id"
  }
variable "vm_web_network_interface_network_id" {
  type        = string
  default     = "yandex_vpc_subnet.develop.id"
  }
