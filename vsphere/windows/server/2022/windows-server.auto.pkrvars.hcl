# Microsoft Windows Server 2022 build variables.
# @author Adrian Heissler

/*
    DESCRIPTION:
    Microsoft Windows Server 2022 build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Installation Operating System Metadata
vm_inst_os_key_standard             = "HP9DJ-NK2X6-4QPCH-8HY8H-6X2XY"
vm_inst_os_key_datacenter           = "WX4NM-KYWYW-QJJR4-XV3QB-6VM33"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type = "windows2019srvNext_64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/windows/server"
iso_content_library_item = "SERVER_EVAL_x64FRE_en-us"
iso_file                 = "SERVER_EVAL_x64FRE_en-us.iso"

// Provisioner Settings
scripts = [ "scripts/windows/common/cloudbase-init.ps1",
    "scripts/windows/common/remote-desktop.ps1",
    "scripts/windows/common/admin-user.ps1" ]