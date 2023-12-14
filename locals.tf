locals{
    vm_metadata = {
      serial-port-enable = 1
      ssh-keys  = "localhost:${file("~/.ssh/id_rsa.pub")} " 
    }
}
