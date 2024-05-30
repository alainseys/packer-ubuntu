#!/bin/bash

check_packer_installed() {
    if ! command -v packer & > /dev/null; then
        echo "Packer is NOT installed."
        sudo sudo yum install -y yum-utils
        sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
        sudo yum -y install packer
        return 1
    else
        echo "Packer is installed"
        retrun 0
    fi
}

check_vcenter_plugin_installed() {
    installed_plugins=$(packer plugins list)

    if echo "$installed_plugins" | grep -q "packer-plugins-vsphere"; then
        echo "vcenter is installed"
        packer build -force -on-error=ask -var-file variables.pkvar-80GB.hcl -var-file variables.pkvar-80GB.hcl -var-file vsphere.pkrvars.hcl ubuntu.pkr.hcl
        return 0
    else
        echo "vcenter plugin not found"
        packer plugins install github.com/hashicorp/vsphere

        return 1
    fi
}

if check_packer_installed; then
    check_vcenter_plugin_installed
fi