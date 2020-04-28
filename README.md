## Features
* Set up nat network (Support dhcp, which is the default network mode)
* Set up bridge network
* Use Virtio drive
* Create a serial port
* Generate random Mac address and record to history (Can set a fixed mac address)
* Assign vnc ports in order
<br/>

## Dependencies
### General
* bash (to run this script)
* procps or procps-ng
* iproute2

### For 'NATed' Internet sharing method
* dnsmasq
* iptables
<br/>

## Installation
    git clone https://github.com/kgdboc/qemu-wrapper.git
    cd qemu-wrapper
    cp qemu-if* /etc
    cp qemu-wrapper /usr/bin
<br/>

## Examples
### Specify the disk image path, Use nat network
    qemu-wrapper /path/to/fedora.qcow2

### Assign ports to vnc in order
    qemu-wrapper /path/to/fedora.qcow2 -vnc

### Set mac address
    qemu-wrapper /path/to/fedora.qcow2 -mac 52:54:91:2c:1e:8d

### Use a bridge network and specify an Ethernet interface 
    qemu-wrapper /path/to/fedora.qcow2 -br eth0

### This is the packaging, exactly the same as qemu
    qemu-wrapper /path/to/fedora.qcow2 -vnc :0 -kernel /path/to/bzImage -append "root=/dev/vda1 console=ttyS0"
<br/>

## License
GPLv3
