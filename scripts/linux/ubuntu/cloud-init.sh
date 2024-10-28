#!/bin/bash
# Configures cloud-init.
# @author Adrian Heissler

# Configure cloud-init
echo 'Configuring cloud-init...'
cat << EOF > /etc/cloud/cloud.cfg.d/99-vmware-guest-customization.cfg
disable_vmware_customization: true
datasource:
  OVF:
    allow_raw_data: true
vmware_cust_file_max_wait: 25
network:
  config: disabled
EOF
cat << EOF > /etc/cloud/cloud.cfg.d/90_dpkg.cfg
datasource_list: [ OVF ]
EOF
cloud-init clean --logs --seed