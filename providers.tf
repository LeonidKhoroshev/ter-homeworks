terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">=0.13"

 backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "yc-leo"
    region                      = "ru-central1"
    key                         = "terraform.tfstate"
    access_key                  = "YCAJEvxktd888WIkZLA4tjF09"
    secret_key                  = "YCNNxI7GfU2FN501HQa6ot8Z4OWcq7rATxCOjqcz"
    dynamodb_endpoint           = "grpcs://ydb.serverless.yandexcloud.net:2135/?database=/ru-central1/b1g3ks25rm2qagep03qb/etnsarqlsjqonfk97bo2"
    dynamodb_table              = "table137"
    skip_region_validation      = true
    skip_credentials_validation = true
 }

}




provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.default_zone
}
