##################################################################################
# VARIABLES
##################################################################################
# Credentials

vcenter_username                = "username@yourdomain.local"
vcenter_password                = "password"

# vSphere Objects

vcenter_insecure_connection     = true
vcenter_server                  = "vcenter.yourdomain.local"
vcenter_datacenter              = "DC1"
vcenter_host                    = "esx-host-01.yourdomain.local"
vcenter_datastore               = "datastore1"
vcenter_network                 = "trunk_all_vlans"
vcenter_folder                  = "templates"

# ISO Objects
iso_path                        = "[datastore1] ubuntu-22.04.4-live-server-amd64.iso"