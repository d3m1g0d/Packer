# Common variables used for all builds.
# @author Adrian Heissler

/*
    DESCRIPTION:
    Common variables used for all builds.
    - Variables are use by the source blocks.
*/

// Virtual Machine Settings
common_vm_version           = 19
common_tools_upgrade_policy = true
common_remove_cdrom         = true

// Template and Content Library Settings
common_template_conversion         = false
common_content_library             = "RegionA1-DC1-ContentLibrary1"
common_content_library_enabled     = true
common_content_library_ovf         = true
common_content_library_destroy     = true
common_content_library_skip_export = false

// OVF Export Settings
common_ovf_export_enabled   = false
common_ovf_export_overwrite = true

// Removable Media Settings
common_iso_datastore               = "RegionA1-NFS1"
common_iso_content_library         = "RegionA1-DC1-ContentLibrary1"
common_iso_content_library_enabled = false

// Boot and Provisioning Settings
common_data_source       = "disk"
//common_data_source       = "http"
common_http_ip           = "172.16.11.13"
common_http_port_min     = 8000
common_http_port_max     = 8099
common_ip_wait_address   = "172.16.11.221/24"
common_ip_wait_timeout   = "20m"
common_ip_settle_timeout = "5s"
common_shutdown_timeout  = "15m"