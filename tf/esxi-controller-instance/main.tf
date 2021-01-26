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

provider "esxi" {
    esxi_hostname = var.esxi_hostname
    esxi_hostport = var.esxi_hostport
    esxi_hostssl = var.esxi_hostssl
    esxi_password = var.esxi_pw
    esxi_username = var.esxi_user
}

resource "esxi_guest" "controller0" {
    disk_store = var.diskstore
    guest_name = var.vmname
    ovf_source = var.vmxsource
    memsize = var.memsize
    numvcpus = var.numvcpus
    
    network_interfaces {
        virtual_network = var.vmnetwork
        mac_address = var.macaddr
    }
}
