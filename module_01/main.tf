variable "trigger" {
  description = "The trigger value for the `null_resource` resource in this module."
  default     = "one"
}

resource "null_resource" "resource_01" {
  triggers = {
    number = "${var.trigger}"
  }
}

output "null_resource_id" {
  description = "The `id` of the `null_resource` resource in this module."
  value       = "${null_resource.resource.id}"
}

module "null_module_02" {
  source = "../module_02"
}
