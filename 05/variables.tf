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
  type        = list
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


###vpc vars

variable "env_name" {
  type        = string
  default     = "db"
}

variable "subnets" {
  type        = list(object({zone = string, cidr = string}))
  default     = [{ zone = "ru-central1-a", cidr = "10.0.1.0/24" },
                 { zone = "ru-central1-b", cidr = "10.0.2.0/24" },
                 { zone = "ru-central1-c", cidr = "10.0.3.0/24" }
                ]
}

###vars for database mysql modules

variable "cluster_name" {
  type        = string
  default     = "example"
}

variable "db_name" {
  type        = string
  default     = "test"
}

variable "network_id" {
  type        = string
  default     = "enpo3d8efurqccjvr2jq"
}

variable "subnet_id" {
  type        = string
  default     = "e9bbjugm4m7aalr1ver3"
}

variable "securiry_group" {
  type        = string
  default     = "enpst7elmqdtqj1j5e16"
}

variable "my_cluster_id" {
  type        = string
  default     = "c9qmav6i4msh8jovbjlq"
}

variable "user_name" {
  type        = string
  default     = "app"
}

variable "HA" {
  type       = bool
  default    = true
}

