resource "azurerm_network_interface" "nic" {
    name                              = var.vm_name
    location                          = var.location
    resource_group_name               = var.resource_group_name
    network_security_group_id         = var.network_security_group_id

    #internal_dns_name_label           = null
    #enable_ip_forwarding              = false
    #enable_accelerated_networking     = false
    #dns_servers                       = null

    ip_configuration {
        name                          = var.stack_name
        subnet_id                     = var.subnet_id
        private_ip_address_allocation = var.private_ip_address_allocation
        private_ip_address            = var.private_ip_address
        public_ip_address_id          = var.public_ip_address_id
    }

    tags = {
        environment                   = var.environment
        stack_name                    = var.stack_name
    }
}
