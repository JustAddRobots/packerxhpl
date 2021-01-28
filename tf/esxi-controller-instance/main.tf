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

variable "workers" {
    description = "Map of workers with MACs"
    type = map
    default = {
        worker0 = {
            macaddr = "52:54:00:9a:a3:df"
        },
        worker1 = {
            macaddr = "52:54:00:98:21:be"
        }
    }
}

module "worker" {
    source = "./modules/worker"
    for_each = var.workers
    name = each.key
    macaddr = each.value.macaddr
}

