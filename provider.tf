provider "vsphere" {
  vsphere_server = var.vsphere_server
  
  # If you have a self-signed cert
  allow_unverified_ssl = true
}