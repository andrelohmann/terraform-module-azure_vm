/**
 * Module Input variables
 */

/**
 * General Variables
 */
variable "location" {
  type = string
  description = "Azure location"
}

variable "environment" {
  type = string
  description = "Environment identifier, added as tag 'environment'"
}

variable "stack_name" {
  type = string
  description = "Stack name, added as tag 'stack'"
}

/**
 * ResourceGroup
 */
 variable "resource_group_name" {
   type = string
   description = "ResourceGroup name to be linked with the vm"
 }

/**
 * VM Variables
 */
variable "vm_name" {
  type = string
  description = "Azure virtual machine resource name"
  default = var.stack_name
}

variable "computer_name" {
  type = string
  description = "Azure virtual machine hostname"
}

variable "vm_size" {
  type = string
  description = "Azure virtual machine size"
  default = "Standard_B1ls"
}

variable "vm_tags" {
  type = map
  description = "Azure virtual machine tags"
}

/**
 * VM OS
 *
 * run "az vm image list --output table" to show a table of available images
 */
variable "os_publisher" {
  type = string
  default = "Canonical"
  description = "OS Image Publisher"
}

variable "os_offer" {
  type = string
  default = "UbuntuServer"
  description = "OS Image Offer"
}

variable "os_sku" {
  type = string
  default = "18.04-LTS"
  description = "OS Image Sku"
}

variable "os_version" {
  type = string
  default = "latest"
  description = "OS Image Version"
}

/**
 * VM Disk
 */
variable "disk_caching" {
  type = string
  default = "ReadWrite"
  description = "VM OS Disk caching"
}

variable "disk_create_option" {
  type = string
  default = "FromImage"
  description = "VM OS Disk create_option"
}

variable "disk_managed_disk_type" {
  type = string
  default = "Standard_LRS"
  description = "VM OS Disk managed_disk_type"
}

variable "disk_size_gb" {
  type = number
  default = 5
  description = "VM OS Disk size in GB"
}

variable "disk_write_accelerator_enabled" {
  type = bool
  default = false
  description = "VM OS Disk write accelerator enabled"
}

/**
 * VM authentication
 */
variable "admin_user" {
  type = string
  description = "Linux Login user name"
}

variable "pub_key" {
  type = string
  description = "Linux login public key"
}

/**
 * Network variables
 */
variable "network_interface_ids" {
  type = list
  default = []
  description = "Azure network interface ids"
}

variable "network_security_group_id" {
  type = string
  description = "Azure network security group id"
}

variable "subnet_id" {
  type = string
  description = "Azure network interface subnet id"
}

variable "private_ip_address_allocation" {
  type = string
  default = "Dynamic"
  description = "Azure network interface private ip address allocation"
}

variable "private_ip_addres" {
  type = string
  default = null
  description = "Azure network interface private ip address"
}

variable "public_ip_address_id" {
  type = string
  default = null
  description = "Azure network interface public ip address id"
}

/**
 * Bootdiagnostics
 */
variable "boot_diagnostics_uri" {
  type = string
  description = "Storage account URI for boot diagnostics"
}
