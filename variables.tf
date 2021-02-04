variable "vsphere_server" {
  type = string
}

variable "vsphere_datacenter" {
  type = string
}

variable "vsphere_datastore" {
  type = string
}

variable "vsphere_cluster" {
  type = string
}

variable "vsphere_network" {
  type = string
}

variable "vm_template_name" {
  type    = string
}

variable "vm_name" {
  type = string
}

variable "vm_hostname" {
  type = string
}

variable "vm_count" {
  type    = number
}

variable "vm_enable_logging" {
  type    = bool
}

variable "vm_folder" {
  type = string
}

variable "vm_guest_id" {
  type    = string
}

variable "vm_num_cpus" {
  type    = number
}

variable "vm_cores_per_socket" {
  type    = number
}

variable "vm_memory" {
  type    = number
}

variable "vm_memory_limit" {
  type    = number
}

variable "vm_cdrom_client_device" {
  type    = bool
  default = true
}

variable "vm_scsi_type" {
  type    = string
  default = "pvscsi"
}

variable "vm_disk_mode" {
  type    = string
}

variable "vm_disk_label_0" {
  type    = string
}

# # additional disk 
# variable "vm_disk_label_1" {
#   type    = string
# }


variable "vm_disk_size" {
  type = number
}

variable "vm_disk_thin_provisioned" {
  type = bool
}

variable "vm_network_interface_adapter_type" {
  type = string
}

variable "vm_customize_time_zone" {
  type = string
}

variable "vm_customize_domain" {
  type = string
}

variable "vm_customize_ipv4_address" {
  type = string
}

variable "vm_customize_ipv4_netmask" {
  type = number
}

variable "vm_customize_dns_server_list" {
  type = list(string)
}

variable "vm_customize_ipv4_gateway" {
  type = string
}