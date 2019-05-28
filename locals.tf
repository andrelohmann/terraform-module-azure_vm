/**
 * Local Variables and helpers
 */

locals {

  /**
   * Build VM Tags
   */
  vm_tags = merge(
    {
       environment      = var.environment
       stack_name       = var.stack_name
    },
    var.vm_tags
  )


}
