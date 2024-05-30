##################################################################################
# VARIABLES
##################################################################################

# HTTP Settings

http_directory = "http"
vm_name                     = "Ubuntu-Server-22.04.4-LTS64-min-80GB-Thin"
vm_guest_os_type            = "ubuntu64Guest"
vm_version                  = 14
vm_firmware                 = "bios"
vm_cdrom_type               = "sata"
vm_cpu_sockets              = 2
vm_cpu_cores                = 1
vm_mem_size                 = 4048
vm_disk_size                = 102400
thin_provision              = true
disk_eagerly_scrub          = false
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "5s"
ssh_username                = "ansible"
ssh_password                = "n6WEbf9YZtJd2EnC"
# ISO Objects

#DVD Installer
iso_url			    = "https://releases.ubuntu.com/22.04.4/ubuntu-22.04.4-live-server-amd64.iso"
iso_file		    = "ubuntu-22.04.4-live-server-amd64.iso"
iso_checksum		    = "45f873de9f8cb637345d6e66a583762730bbea30277ef7b32c9c3bd6700a32b2" # shasum -a 256 \home\aseys\Download\nameiso.iso
iso_checksum_type	    = "sha256"
shell_scripts               = ["./scripts/bootstrap.sh"]