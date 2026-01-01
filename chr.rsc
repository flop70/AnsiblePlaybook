# 2025-12-31 18:20:31 by RouterOS 7.20.6
# system id = v4TaANrQNWK
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
/ip address
add address=192.168.50.1/24 interface=ether2 network=192.168.50.0
/ip dhcp-client
add interface=ether1
/ip firewall filter
add action=drop chain=input dst-address=1.1.1.1 dst-port=443 protocol=tcp
/radius
add address=35.227.71.209 service=hotspot
