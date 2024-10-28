# Ubuntu Server 22.04 LTS build variables.
# @author Adrian Heissler

/*
    DESCRIPTION:
    Ubuntu Server 22.04 LTS build variables.
    Packer Plugin for VMware vSphere: 'vsphere-iso' builder.
*/

// Guest Operating System Metadata
vm_guest_os_name     = "ubuntu"
vm_guest_os_version  = "22.04-lts"

// Virtual Machine Guest Operating System Setting
vm_guest_os_type      = "ubuntu64Guest"

// Virtual Machine Hardware Settings
vm_firmware              = "efi-secure"

// Removable Media Settings
iso_datastore_path       = "iso/linux/ubuntu"
iso_content_library_item = "ubuntu-22.04.2-live-server-amd64"
iso_file                 = "ubuntu-22.04.2-live-server-amd64.iso"

// Provisioner Settings
scripts = [ "scripts/linux/ubuntu/cloud-init.sh",
    "scripts/linux/common/machine-id.sh" ]