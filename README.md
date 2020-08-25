## Features
* Set up nat network (Support dhcp, which is the default network mode)
* Set up bridge network
* Use Virtio drive
* Create a serial port
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
* qemu-system-x86_64
<br/>

## Installation
    git clone --depth 1 https://github.com/kgdboc/qemu-wrapper.git
    cd qemu-wrapper
    make install
<br/>

<pre>
Usage: qemu-wrapper [options] [disk_image]

'disk_image' is a raw hard disk image for IDE hard disk 0

Standard options:
-h or -help                  display this help and exit
-br internet_interface       set the network mode to bridge (default is nat)
-mac mac_address             set mac address
-vnc                         enable vnc and assign ports in order
-vda/-vdb/-vdc/-vdd file     set disk path

Examples:
  qemu-wrapper -br eth0 -mac 52:54:91:2c:1e:8d -vnc fedora.qcow2
  qemu-wrapper -vda fedora.qcow2 -kernel bzImage -append "root=/dev/vda1 console=ttyS0" -serial stdio
</pre>

## License
GPLv3

