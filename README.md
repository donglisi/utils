## Features
* Set up nat (Support Dhcp) or bridge network
* Use Virtio drive
* Create a serial port
* Generate random Mac address and record to history (Can set a fixed mac address)
* Assign vnc ports in order


## Dependencies
### General
* bash (to run this script)
* procps or procps-ng
* iproute2

### For 'NATed' Internet sharing method
* dnsmasq
* iptables


## Installation
git clone https://github.com/kgdboc/qemu-wrapper.git
cp qemu-if* /etc
cp qemu-wrapper /usr/bin

## License
GPLv3
