resource "vsphere_virtual_machine" "sample" {
  name = join("", [upper(var.vm_name), "0", "${count.index + 1}"])

  count          = var.vm_count
  enable_logging = var.vm_enable_logging
  folder         = var.vm_folder
  guest_id       = data.vsphere_virtual_machine.sample_template.guest_id

  num_cpus             = var.vm_num_cpus
  num_cores_per_socket = var.vm_cores_per_socket
  
  memory       = var.vm_memory
  memory_limit = var.vm_memory_limit

  cpu_hot_add_enabled = true
  cpu_hot_remove_enabled =true
  memory_hot_add_enabled =true


  cdrom {
    client_device = var.vm_cdrom_client_device
  }

  datastore_id     = data.vsphere_datastore.datastore.id
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  scsi_type        = var.vm_scsi_type

  disk {
    disk_mode        = var.vm_disk_mode
    label            = var.vm_disk_label_0
    size             = var.vm_disk_size
    thin_provisioned = var.vm_disk_thin_provisioned
  }

  disk {
    disk_mode       = var.vm_disk_mode
    label           = var.vm_disk_label_1
    size             = var.vm_disk_size
    thin_provisioned = var.vm_disk_thin_provisioned
    unit_number = 1
  }

  network_interface {
    adapter_type = var.vm_network_interface_adapter_type
    network_id   = data.vsphere_network.network.id
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.sample_template.id

    customize {
      linux_options {
        host_name = join("", [lower(var.vm_name), "0", "${count.index + 1}"])
        time_zone = var.vm_customize_time_zone
        domain    = var.vm_customize_domain
      }

      network_interface {
        ipv4_address = join("", [var.vm_customize_ipv4_address, "${count.index + 1}"])
        ipv4_netmask = var.vm_customize_ipv4_netmask
      }

      dns_server_list = var.vm_customize_dns_server_list

      ipv4_gateway = var.vm_customize_ipv4_gateway
    }
  }
}