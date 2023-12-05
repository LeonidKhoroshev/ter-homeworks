locals {
  instance             = "netology-develop-platform"
  name_web             = "web"
  name_db              = "db"
  vm_web_instance_name = "${local.instance}-${local.name_web}"
  vm_db_instance_name  = "${local.instance}-${local.name_db}"
}
