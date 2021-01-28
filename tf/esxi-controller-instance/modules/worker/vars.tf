variable "diskstore" {
    default = "datastore1"
}

variable "guestos" {
    default = "centos-64"
}

variable "memsize" {
    default = 8192
}

variable "numvcpus" {
    default = 2
}

variable "power" {
    default = "on"
}

variable "vmnetwork" {
    default = "VM Network"
}

variable "vmxsource" {
    default = "/tmp/packer/worker/centos-7.9-x86_64-worker.vmx"
}

