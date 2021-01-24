variable "password" {
    default: "packer"
    ami_url: "file:///tmp/packer/controller/centos-7.9-x86_64-controller.vmx"
}

provider "vix" {
    product = "fusion"
    verify_ssl = false
    clone_type = "full"
}

resource "vix_vm" "controller" {
    cpus = 2
    description = "Terraform VMWare Fusion controller"
    gui = false
    image {
        url = "${var.ami_url}"
        checksum = ""
        checksum_type = ""

    }
    name = "worker0"
    memory = "16.0gib"
    network_adapter {
        type = "bridged"
    }
}
