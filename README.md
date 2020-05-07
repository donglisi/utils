## Features
* Set up nat network (Support dhcp, which is the default network mode)
* Set up bridge network
* Use Virtio drive
* Create a serial port
* Share directory via 9p file system (mount_tag=hsd)
* Generate random Mac address and record to history (Can also set a fixed mac address)
* Assign ports to vnc in order
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
### Start a disk image
    qemu-wrapper /path/to/fedora.qcow2

### Use a bridge network and specify an Ethernet interface 
    qemu-wrapper /path/to/fedora.qcow2 -br eth0

### Set mac address
    qemu-wrapper /path/to/fedora.qcow2 -mac 52:54:91:2c:1e:8d

### Share directory
    qemu-wrapper /path/to/fedora.qcow2 -dir /path/to/share_directory

### Enable vnc
    qemu-wrapper /path/to/fedora.qcow2 -vnc

### Use options supported by qemu
    qemu-wrapper /path/to/fedora.qcow2 -kernel /path/to/bzImage -append "root=/dev/vda1 console=ttyS0" -nographic -vnc :0
<br/>

## License
GPLv3
