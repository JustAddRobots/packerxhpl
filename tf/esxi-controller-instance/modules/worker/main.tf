variable "memsize" {
    default = 8192
}

variable "numvcpus" {
    default = 2
}

variable "vmxsource" {
    default = "/tmp/packer/worker/centos-7.9-x86_64-worker.vmx"
}

resource "esxi_guest" "main" {
   disk_store = var.diskstore
    guestos = var.guestos
    guest_name = var.name
    ovf_source = var.vmxsource
    power = on
    memsize = var.memsize
    numvcpus = var.numvcpus

    network_interfaces {
        virtual_network = var.vmnetwork
        mac_address = var.macaddr
    }
}
