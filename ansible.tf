resource "local_file" "hosts_cfg" {
  filename = "./hosts.cfg"
  content = templatefile("./hosts.tftpl", {
  	webservers	= yandex_compute_instance.web,
  	databases       = yandex_compute_instance.vm,
  	storage         = [yandex_compute_instance.storage]
	}
  )
}

resource "null_resource" "web_hosts_provision" {
  depends_on = [yandex_compute_instance.vm, yandex_compute_instance.storage, local_file.hosts_cfg]
  provisioner "local-exec" {
	command = "sleep 30"
  }

  provisioner "local-exec" {
    command = "cat ~/.ssh/id_rsa | ssh-add -"
  }

  provisioner "local-exec" {                  
    command  = "export ANSIBLE_HOST_KEY_CHECKING=False; ansible-playbook -i ${abspath(path.module)}/hosts.cfg ${abspath(path.module)}/test.yml"
    on_failure = continue
    environment = { ANSIBLE_HOST_KEY_CHECKING = "False" }
  }
    triggers = {  
      always_run         = "${timestamp()}"
      playbook_src_hash  = file("./test.yml")
      ssh_public_key     = var.public_key
    }

}
