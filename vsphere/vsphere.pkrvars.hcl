# VMware vSphere variables used for all builds.
# @author Adrian Heissler

/*
    DESCRIPTION:
    VMware vSphere variables used for all builds.
    - Variables are use by the source blocks.
*/

// vSphere Credentials
vsphere_endpoint            = "vc1.corp.local"
vsphere_username            = "administrator@vsphere.local"
vsphere_password            = "VMware123!"
vsphere_insecure_connection = true 

// vSphere Settings
vsphere_datacenter                     = "RegionA1-DC1"
vsphere_cluster                        = "RegionA1-Comp1"
//vsphere_host                         = "esx1.corp.local"
vsphere_datastore                      = "RegionA1-NFS1"
vsphere_network                        = "VM Network"
vsphere_folder                         = "Templates"
//vsphere_resource_pool                = ""
vsphere_set_host_for_datastore_uploads = false
