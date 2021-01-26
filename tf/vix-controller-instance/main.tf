variable "password" {
    default = "packer"
}

variable "ami_checksum" {
    default = "6798e0d1bd04edb210b26a33892aaa7ea2528e2fb5d57ea86597f3ae466ffaad"
}

variable "ami_checksum_type" {
    default = "sha256"
}

variable "ami_url" {
    default = "file:///tmp/packer/controller/centos-7.9-x86_64-controller.vmx"
}

provider "vix" {
    product = "fusion"
    verify_ssl = false
    clone_type = "full"
}

resource "vix_vm" "controller0" {
    cpus = 2
    description = "Terraform VMWare Fusion controller0"
    gui = false
    image {
        checksum = var.ami_checksum
        checksum_type = var.ami_checksum_type
        url = var.ami_url
    }
    name = "controller0"
    memory = "16.0gib"
    network_adapter {
        type = "bridged"
    }
}
