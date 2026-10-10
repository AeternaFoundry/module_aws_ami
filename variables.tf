variable "amis" {
  description = <<EOT
Map of amis, attributes below
Required:
    - name
Optional:
    - architecture
    - boot_mode
    - deprecation_time
    - description
    - ena_support
    - image_location
    - imds_support
    - kernel_id
    - ramdisk_id
    - region
    - root_device_name
    - sriov_net_support
    - tags
    - tags_all
    - tpm_support
    - uefi_data
    - virtualization_type
    - ebs_block_device (block):
        - delete_on_termination (optional)
        - device_name (required)
        - encrypted (optional)
        - iops (optional)
        - outpost_arn (optional)
        - snapshot_id (optional)
        - throughput (optional)
        - volume_size (optional)
        - volume_type (optional)
    - ephemeral_block_device (block):
        - device_name (required)
        - virtual_name (required)
EOT

  type = map(object({
    name                = string
    tpm_support         = optional(string)
    tags_all            = optional(map(string))
    tags                = optional(map(string))
    sriov_net_support   = optional(string)
    root_device_name    = optional(string)
    region              = optional(string)
    ramdisk_id          = optional(string)
    kernel_id           = optional(string)
    imds_support        = optional(string)
    image_location      = optional(string)
    ena_support         = optional(bool)
    description         = optional(string)
    deprecation_time    = optional(string)
    boot_mode           = optional(string)
    architecture        = optional(string)
    uefi_data           = optional(string)
    virtualization_type = optional(string)
    ebs_block_device = optional(list(object({
      delete_on_termination = optional(bool)
      device_name           = string
      encrypted             = optional(bool)
      iops                  = optional(number)
      outpost_arn           = optional(string)
      snapshot_id           = optional(string)
      throughput            = optional(number)
      volume_size           = optional(number)
      volume_type           = optional(string)
    })))
    ephemeral_block_device = optional(list(object({
      device_name  = string
      virtual_name = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.amis : (
        v.imds_support == null || (contains(["v2.0"], v.imds_support))
      )
    ])
    error_message = "must be one of: v2.0"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

