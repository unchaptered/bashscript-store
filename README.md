# BashScript Store

This project is accompanied by _"[Understanding for Bash Script](https://www.notion.so/unchaptered/BashScript-12d7e97277684b7789c47cd68b7e2307?pvs=4)"_.

> Document List 
> - [Basic of BashScript](src/01_basic)
> - [Advanced of BashScript](src/02_advanced)
> <br><br>

## A. Installation

- [Install Virtual Box 6.1.32](./README.md#a1-virtual-box)
- [Install Vagrant v2.3.7](./README.md#a2-install-vagrant)

### A.1. Virtual Box

1. Install **[Virtual Box 6.1.32](https://download.virtualbox.org/virtualbox/6.1.32/)**.
2. Create **Virtual Machine as CentOS Version 8**

> Are you encounter this Erorrs? <br>
> 
> 1. Cannot find next physical network interfaces
> 2. Nonexistent host networking interface, name 'VirtualBox Host-Only Ethernet Adapter #2' (VERR_INTERNAL_ERROR).
>
> Follow this solutions. <br>
> 
> <details>
>    <summary> 1. Install Ethernet Client for Microsoft Network to use Virtual Box. </summary>
>        <image
>            style="width: 700px;"
>            src="images/virtualbox_ethernet_setup_01.png" />
>        <image
>            style="width: 700px;"
>            src="images/virtualbox_ethernet_setup_02.png" />
>        <image
>            style="width: 700px;"
>            src="images/virtualbox_ethernet_setup_03.png" />
> </details>
> <details>
>    <summary> 2. Re-click network adapter to sync betwen Virtual Box and your PC. </summary>
>        <image
>            style="width: 700px;"
>            src="images/virtualbox_network_adapter_01.png" />

### A.2. Install Vagrant

1. Install **[Vagrant 2.3.7.](https://developer.hashicorp.com/vagrant/docs/v2.3.7/installation)**

