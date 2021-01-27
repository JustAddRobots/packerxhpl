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
    esxi_password = var.esxi_password
    esxi_username = var.esxi_username
}

resource "esxi_guest" "controller0" {
    disk_store = var.diskstore
    guestos = var.guestos
    guest_name = var.vmname
    ovf_source = var.vmxsource
    power = on
    memsize = var.memsize
    numvcpus = var.numvcpus
    
    network_interfaces {
        virtual_network = var.vmnetwork
        mac_address = var.macaddr
    }
}

/*
module "worker" {
    macaddr = "52:54:00:9a:a3:df"
    name = "worker0"
    source = "modules/worker"
}

module "worker" {
    macaddr = "52:54:00:98:21:be"
    name = "worker1"
    source = "modules/worker"
}

module "controller" {
    macaddr = "52:54:00:f1:f1:6e"
    name = "controller0"
    source = "modules/controller"
}
*/
