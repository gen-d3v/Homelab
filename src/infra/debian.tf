resource "proxmox_virtual_environment_vm" "test_vm" {
  name        = "debian-system"
  description = "System with debina linux"
  tags        = ["opentofu", "debian", "linux"]

  node_name = var.proxmox_nodes.pm1.name
  vm_id     = 200

  clone {
    vm_id = var.debian_template_id
    full  = true
  }

  cpu {
    cores = 2
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = 2 * local.gib
  }

  disk {
    datastore_id = var.datastore_id.pm1
    interface    = "scsi0"
    size         = 40
  }

  network_device {
    bridge = var.network_bridge.pm1
    model  = "virtio"
  }

  initialization {
    datastore_id = var.datastore_id.pm1

    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }

    user_account {
      username = var.vm_user.username
      keys     = [trimspace(file(var.vm_user.key_path))]
    }
  }

  agent {
    enabled = false
  }

  operating_system {
    type = "l26"
  }

  started = true

}