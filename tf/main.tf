variable "password" {
    default: "packer"
}

provider "vix" {
    product = "fusion"
    verify_ssl = false
    clone_type = "full"
}

resource "vix_vm" "worker0" {
    name = "worker0"
    description = "Terraform VMWare Fusion worker0"
    image {

    }

    network_adapter {
        type = "bridged"
    }
