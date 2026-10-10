output "amis_id" {
  description = "Map of id values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.id if v.id != null && length(v.id) > 0 }
}
output "amis_architecture" {
  description = "Map of architecture values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.architecture if v.architecture != null && length(v.architecture) > 0 }
}
output "amis_arn" {
  description = "Map of arn values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "amis_boot_mode" {
  description = "Map of boot_mode values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.boot_mode if v.boot_mode != null && length(v.boot_mode) > 0 }
}
output "amis_deprecation_time" {
  description = "Map of deprecation_time values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.deprecation_time if v.deprecation_time != null && length(v.deprecation_time) > 0 }
}
output "amis_description" {
  description = "Map of description values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.description if v.description != null && length(v.description) > 0 }
}
output "amis_ebs_block_device" {
  description = "Map of ebs_block_device values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.ebs_block_device if v.ebs_block_device != null && length(v.ebs_block_device) > 0 }
}
output "amis_ena_support" {
  description = "Map of ena_support values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.ena_support if v.ena_support != null }
}
output "amis_ephemeral_block_device" {
  description = "Map of ephemeral_block_device values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.ephemeral_block_device if v.ephemeral_block_device != null && length(v.ephemeral_block_device) > 0 }
}
output "amis_hypervisor" {
  description = "Map of hypervisor values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.hypervisor if v.hypervisor != null && length(v.hypervisor) > 0 }
}
output "amis_image_location" {
  description = "Map of image_location values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.image_location if v.image_location != null && length(v.image_location) > 0 }
}
output "amis_image_owner_alias" {
  description = "Map of image_owner_alias values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.image_owner_alias if v.image_owner_alias != null && length(v.image_owner_alias) > 0 }
}
output "amis_image_type" {
  description = "Map of image_type values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.image_type if v.image_type != null && length(v.image_type) > 0 }
}
output "amis_imds_support" {
  description = "Map of imds_support values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.imds_support if v.imds_support != null && length(v.imds_support) > 0 }
}
output "amis_kernel_id" {
  description = "Map of kernel_id values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.kernel_id if v.kernel_id != null && length(v.kernel_id) > 0 }
}
output "amis_last_launched_time" {
  description = "Map of last_launched_time values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.last_launched_time if v.last_launched_time != null && length(v.last_launched_time) > 0 }
}
output "amis_manage_ebs_snapshots" {
  description = "Map of manage_ebs_snapshots values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.manage_ebs_snapshots if v.manage_ebs_snapshots != null }
}
output "amis_name" {
  description = "Map of name values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.name if v.name != null && length(v.name) > 0 }
}
output "amis_owner_id" {
  description = "Map of owner_id values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "amis_platform" {
  description = "Map of platform values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.platform if v.platform != null && length(v.platform) > 0 }
}
output "amis_platform_details" {
  description = "Map of platform_details values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.platform_details if v.platform_details != null && length(v.platform_details) > 0 }
}
output "amis_public" {
  description = "Map of public values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.public if v.public != null }
}
output "amis_ramdisk_id" {
  description = "Map of ramdisk_id values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.ramdisk_id if v.ramdisk_id != null && length(v.ramdisk_id) > 0 }
}
output "amis_region" {
  description = "Map of region values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.region if v.region != null && length(v.region) > 0 }
}
output "amis_root_device_name" {
  description = "Map of root_device_name values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.root_device_name if v.root_device_name != null && length(v.root_device_name) > 0 }
}
output "amis_root_snapshot_id" {
  description = "Map of root_snapshot_id values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.root_snapshot_id if v.root_snapshot_id != null && length(v.root_snapshot_id) > 0 }
}
output "amis_sriov_net_support" {
  description = "Map of sriov_net_support values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.sriov_net_support if v.sriov_net_support != null && length(v.sriov_net_support) > 0 }
}
output "amis_tags" {
  description = "Map of tags values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "amis_tags_all" {
  description = "Map of tags_all values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "amis_tpm_support" {
  description = "Map of tpm_support values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.tpm_support if v.tpm_support != null && length(v.tpm_support) > 0 }
}
output "amis_uefi_data" {
  description = "Map of uefi_data values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.uefi_data if v.uefi_data != null && length(v.uefi_data) > 0 }
}
output "amis_usage_operation" {
  description = "Map of usage_operation values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.usage_operation if v.usage_operation != null && length(v.usage_operation) > 0 }
}
output "amis_virtualization_type" {
  description = "Map of virtualization_type values across all amis, keyed the same as var.amis"
  value       = { for k, v in aws_ami.amis : k => v.virtualization_type if v.virtualization_type != null && length(v.virtualization_type) > 0 }
}

