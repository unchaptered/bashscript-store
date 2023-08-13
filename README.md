# BashScript Store

This project is accompanied by _"[Understanding for Bash Script](https://www.notion.so/unchaptered/BashScript-12d7e97277684b7789c47cd68b7e2307?pvs=4)"_.

## Docs

- [Basic of BashScript](src/01_basic)
- [Advanced of BashScript](src/02_advanced)

## Get Started

Get started with [this tap](./README.md#get-started)

VBoxManage list vms
### Environment List

I use Code on Web

1. [JSLinux](https://bellard.org/jslinux/)
2. [Code on Web](https://www.codeonweb.com/#/)
3. AWS Linux
4. [Virtual Box 6.1.32](https://download.virtualbox.org/virtualbox/6.1.32/)

### Installation

1. Install **[Virtual Box 6.1.32](https://download.virtualbox.org/virtualbox/6.1.32/)**.
2. Create **Virtual Machine as CentOS 8**
    | CPU | MEM |
    | --- | --- |
    | 2 | 1024 MB |
3. If you encounter `Network Error`, follow this solutions. <br> [CASE A] `Cannot find next phsicasl network interfaces` / `다음의 물리적 네트워크 인터페이스를 찾을 수 없습니다.` <br> [CASE B] : `Nonexistent host networking interface, name 'VirtualBox Host-Only Ethernet Adapter #2' (VERR_INTERNAL_ERROR).`
    1. [Blog Post - VirtualBox Host-Only Ethernet Adapter (VERR_INTERNAL_ERROR)](https://m.blog.naver.com/cokolavel/221450790909)
    2. Install Ethernet Client, and then Re-click Network Adapter to sync between VirtualBox and your PC.
        1. Install Ethernet Client for Microsoft Network to use Virtual Box. <br>
            <image
                style="width: 400px;"
                src="images/virtualbox_ethernet_setup_01.png" />
            <image
                style="width: 400px;"
                src="images/virtualbox_ethernet_setup_02.png" />
            <image
                style="width: 400px;"
                src="images/virtualbox_ethernet_setup_03.png" />
        2. Re-click network adapter to sync betwen Virtual Box and your PC. <br>
            <image
                style="width: 400px;"
                src="images/virtualbox_network_adapter_01.png" />