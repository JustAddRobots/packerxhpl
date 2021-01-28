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
