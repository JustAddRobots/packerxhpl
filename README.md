# packerxhpl
Packer / Terraform deployment for XHPL POC

## About

This is an infrastructure-as-code WIP for my XHPL deployment to baremetal compute cluster
proof-of-concept. The goal is to automatically instance a build server and Kubernetes
cluster on which High Performance Linpack containers are built, tested, and deployed.

See
[deployxhpl](https://github.com/JustAddRobots/deployxhpl), 
[runkubejobs](https://github.com/JustAddRobots/runkubejobs), 
[runxhpl](https://github.com/JustAddRobots/runxhpl), and 
[xhplconsole-api](https://github.com/JustAddRobots/xhplconsole-api) to learn more.

There is *no support* for this project.


## Background 

Machine images are created using Packer + VMware Fusion. I hoped to deploy those same 
images using Fusion + the 
[Vix Terraform provider](https://github.com/hooklift/terraform-provider-vix), 
but it seems that project is no longer being updated (or at least I couldn't get it 
working). Instead, I used a nested install of VMware ESXi inside VMware Fusion and 
deployed VMs using the 
[ESXi Terraform provider](https://github.com/josenk/terraform-provider-esxi).
Ansible is used for provisioning machine images as well as post-deployment VMs.

## Features

- Creates 3 VMs:
    - controller0: build server, kubernetes master
    - worker0: kubernetes node
    - worker1: kubernetes node

## Requirements

* Terraform 0.14.4+
* Packer 1.6.6+
* VMware Fusion 12.1+
* VMWare ESXi 7.0+

## Workflow in Action

### 01 - Packer Build
* Build controller machine image
* Build worker machine image


![Packer Build](./readme/packerxhpl-clip-01-800x450.gif)

### 02 - Terraform Apply / Destroy
* Deploy controller and worker nodes
* Destroy controller and worker nodes

![Terraform Apply](./readme/packerxhpl-clip-02-800x450.gif)

## Todo
* Jenkins plugin and pipeline configuration.
