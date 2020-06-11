## Features
* Set up nat network (Support dhcp, which is the default network mode)
* Set up bridge network
* Use Virtio drive
* Create a serial port
* Share directory via Virtio-fs file system (mount -t virtiofs myfs /path/to/mount_point)
* Generate random Mac address (Can also set a fixed mac address)
* Assign ports to vnc in order
* Support all options of qemu
<br/>

## Dependencies
* bash (to run this script)
* iproute2
* iptables
* procps-ng
* dnsmasq
<br/>

## Installation
    git clone --depth 1 https://github.com/kgdboc/qemu-wrapper.git
    cd qemu-wrapper
    make install
<br/>


## Examples
### Start a disk image
    qemu-wrapper -disk /path/to/fedora.qcow2

### Use a bridge network and specify an Ethernet interface 
    qemu-wrapper -disk /path/to/fedora.qcow2 -br eth0

### Set mac address
    qemu-wrapper -disk /path/to/fedora.qcow2 -mac 52:54:91:2c:1e:8d

### Share directory
    qemu-wrapper -disk /path/to/fedora.qcow2 -dir /path/to/share_directory

### Enable vnc
    qemu-wrapper -disk /path/to/fedora.qcow2 -vnc

### Use options supported by qemu
    qemu-wrapper -disk /path/to/fedora.qcow2 -kernel /path/to/bzImage -append "root=/dev/vda1 console=ttyS0" -nographic -vnc :0
<br/>

## License
GPLv3
