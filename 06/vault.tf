provider "vault" {
 address = "http://127.0.0.1:8200"
 skip_tls_verify = true
 token = "education"
}

data "vault_generic_secret" "example"{
 path = "secret/example"
}

resource "vault_generic_secret" "my_secret" {
  path = "secret/example"

  data_json = jsonencode({
    top_secret = var.my_secret
  })
}

variable "my_secret" {
  type    = string
  default = "Happy new year!"
}

output "example" {
 value = "${nonsensitive(data.vault_generic_secret.example.data)}"
} 

