terraform {
  required_version = ">= 0.13"
  required_providers {
    esxi = {
      source = "registry.terraform.io/josenk/esxi"
      #
      # For more information, see the provider source documentation:
      # https://github.com/josenk/terraform-provider-esxi
      # https://registry.terraform.io/providers/josenk/esxi
    }
  }
}

variable "macaddr" { }

variable "name" { }

resource "esxi_guest" "main" {
    disk_store = var.diskstore
    guestos = var.guestos
    guest_name = var.name
    ovf_source = var.vmxsource
    power = var.power
    memsize = var.memsize
    numvcpus = var.numvcpus

    network_interfaces {
        virtual_network = var.vmnetwork
        mac_address = var.macaddr
    }
}
