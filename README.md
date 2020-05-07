## Features
* Set up nat network (Support dhcp, which is the default network mode)
* Set up bridge network
* Can use bridge and nat mode at the same time
* Can run multiple instances simultaneously
* Use Virtio drive
* Create a serial port
* Generate random Mac address and record to history (Can also set a fixed mac address)
* Support all options of qemu, but the first parameter must be a disk image
<br/>

## Dependencies
* bash (to run this script)
* iproute2
* iptables
* procps-ng
* dnsmasq
<br/>

## Installation
    git clone https://github.com/kgdboc/qemu-wrapper.git
    cd qemu-wrapper
    make install
<br/>


## Examples
### Boot a disk image
    qemu-wrapper /path/to/fedora.qcow2

### Set mac address
    qemu-wrapper /path/to/fedora.qcow2 -mac 52:54:91:2c:1e:8d

### Use a bridge network and specify an Ethernet interface 
    qemu-wrapper /path/to/fedora.qcow2 -br eth0

### Share directory via 9p file system
    qemu-wrapper /path/to/fedora.qcow2 -dir /path/to/share_directory

### Assign ports to vnc in order
    qemu-wrapper /path/to/fedora.qcow2 -vnc

### Use options supported by qemu
    qemu-wrapper /path/to/fedora.qcow2 -kernel /path/to/bzImage -append "root=/dev/vda1 console=ttyS0" -nographic -vnc :0
<br/>

## License
GPLv3
