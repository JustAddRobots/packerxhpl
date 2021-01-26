variable "diskstore" {
    default = "datastore1"
}

variable "esxi_hostname" {
    default = "11.22.33.99"
}

variable "esxi_hostport" {
    default = "22"
}

variable "esxi_hostssl" {
    default = "443"
}

variable "esxi_password" {
    default = "password"
}

variable "esxi_username" {
    default = "root"
}

variable "macaddr" {
    default = "52:54:00:f1:f1:6e"
}

variable "memsize" {
    default = 16384
}

variable "numvcpus" {
    default = 2
}

variable "vmname" {
    default =  "controller0"
}

variable "vmnetwork" {
    default = "VM Network"
}

variable "vmxsource" {
    default = "/tmp/packer/controller/centos-7.9-x86_64-controller.vmx"
}

