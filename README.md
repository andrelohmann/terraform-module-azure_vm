# terraform-module-azure_vm  - (c) Andre Lohmann (and others) 2019

## Maintainer Contact
 * Andre Lohmann
   <lohmann.andre (at) gmail (dot) com>

## content

Terraform module to setup a linux virtual compute resource on azure.

## variables

The following variables need to be defined, when using this module:

        module "your-vm" {
          source                                      = "github.com/andrelohmann/terraform-module-azure_vm"
          location                                    = "westeurope"
          environment                                 = "PRODUCTION"
          stack_name                                  = "your-vm-stack"
          vm_name                                     = "your-vm-name"
          resource_group_name                         = "your-resource-group"
          computer_name                               = "vm-hostname"
          vm_size                                     = "Standard_B1ls"
          vm_tags                                     = { yourtag = "yourtag" }
          admin_user                                  = "vm-login-username"
          pub_key                                     = "ssh-rsa AAAA..."
          boot_diagnostics_uri                        = "your-boot-diagnostics-storage-account-uri"
          network_security_group_id                   = "your-security-group-id"
          subnet_id                                   = "your-subnet-id"
          # optional parameters
          os_publisher                                = "Canonical"
          os_offer                                    = "UbuntuServer"
          os_sku                                      = "18.04-LTS"
          os_version                                  = "latest"
          disk_caching                                = "ReadWrite"
          disk_create_option                          = "FromImage"
          disk_managed_disk_type                      = "Standard_LRS"
          disk_size_gb                                = 5
          disk_write_accelerator_enabled              = false
          network_interface_ids                       = []
          private_ip_address_allocation               = "Dynamic"
          private_ip_addres                           = "your-private-ip"
          public_ip_address_id                        = "your-public-ip-address-id"
        }

## outputs

The following output variables are available:

        vm_id
        vm_name
