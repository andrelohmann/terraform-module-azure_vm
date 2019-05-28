/**
 * VM ID
 */
output "vm_id" {
  value = azurerm_virtual_machine.vm.id
}

/**
 * VM name
 */
output "vm_name" {
  value = azurerm_virtual_machine.vm.name
}
