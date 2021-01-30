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

variable "nodes" {
    description = "Map of nodes with MACs"
    type = map
    default = {
        controller0 = {
            macaddr = "52:54:00:8e:94:6c"
            memsize = 8192
            numvcpus = 2
            vmxsource = "/usr/local/etc/packer/controller/centos-7.9-x86_64-controller.vmx"
        },
        worker0 = {
            macaddr = "52:54:00:9a:a3:df"
            memsize = 8192
            numvcpus = 2
            vmxsource = "/usr/local/etc/packer/worker/centos-7.9-x86_64-worker.vmx"
        },
        worker1 = {
            macaddr = "52:54:00:98:21:be"
            memsize = 8192
            numvcpus = 2
            vmxsource = "/usr/local/etc/packer/worker/centos-7.9-x86_64-worker.vmx"
        }
    }
}

module "node" {
    source = "./modules/node"
    for_each = var.nodes
    name = each.key
    macaddr = each.value.macaddr
    memsize = each.value.memsize
    numvcpus = each.value.numvcpus
    vmxsource = each.value.vmxsource
}

