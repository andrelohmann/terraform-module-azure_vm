resource "azurerm_virtual_machine" "vm" {
    name                  = var.vm_name
    location              = var.location
    resource_group_name   = var.resource_group_name
    network_interface_ids = concat(["${azurerm_network_interface.nic.id}"], var.network_interface_ids)
    vm_size               = var.vm_size

    storage_os_disk {
        name                      = "${var.vm_name}-osdisk"
        caching                   = var.disk_caching
        create_option             = var.disk_create_option
        managed_disk_type         = var.disk_managed_disk_type
        disk_size_gb              = var.disk_size_gb
        write_accelerator_enabled = var.disk_write_accelerator_enabled
    }

    storage_image_reference {
        publisher = var.os_publisher
        offer     = var.os_offer
        sku       = var.os_sku
        version   = var.os_version
    }

    os_profile {
        computer_name  = var.computer_name
        admin_username = var.admin_user
    }

    os_profile_linux_config {
        disable_password_authentication = true
        ssh_keys {
            path     = "/home/${var.admin_user}/.ssh/authorized_keys"
            key_data = var.pub_key
        }
    }

    boot_diagnostics {
        enabled     = "true"
        storage_uri = var.boot_diagnostics_uri
    }

    tags = local.vm_tags
}
