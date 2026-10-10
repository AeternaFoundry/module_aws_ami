resource "aws_ami" "amis" {
  for_each = var.amis

  name                = each.value.name
  tpm_support         = each.value.tpm_support
  tags_all            = each.value.tags_all
  tags                = each.value.tags
  sriov_net_support   = each.value.sriov_net_support
  root_device_name    = each.value.root_device_name
  region              = each.value.region
  ramdisk_id          = each.value.ramdisk_id
  kernel_id           = each.value.kernel_id
  imds_support        = each.value.imds_support
  image_location      = each.value.image_location
  ena_support         = each.value.ena_support
  description         = each.value.description
  deprecation_time    = each.value.deprecation_time
  boot_mode           = each.value.boot_mode
  architecture        = each.value.architecture
  uefi_data           = each.value.uefi_data
  virtualization_type = each.value.virtualization_type

  dynamic "ebs_block_device" {
    for_each = each.value.ebs_block_device != null ? each.value.ebs_block_device : []
    content {
      delete_on_termination = ebs_block_device.value.delete_on_termination
      device_name           = ebs_block_device.value.device_name
      encrypted             = ebs_block_device.value.encrypted
      iops                  = ebs_block_device.value.iops
      outpost_arn           = ebs_block_device.value.outpost_arn
      snapshot_id           = ebs_block_device.value.snapshot_id
      throughput            = ebs_block_device.value.throughput
      volume_size           = ebs_block_device.value.volume_size
      volume_type           = ebs_block_device.value.volume_type
    }
  }

  dynamic "ephemeral_block_device" {
    for_each = each.value.ephemeral_block_device != null ? each.value.ephemeral_block_device : []
    content {
      device_name  = ephemeral_block_device.value.device_name
      virtual_name = ephemeral_block_device.value.virtual_name
    }
  }
}

