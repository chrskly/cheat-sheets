# Cisco

switchport mode access
switchport mode trunk

switchport access vlan x

switchport mode trunk
switchport trunk allowed vlan remove 1

# mgmt
ip default-gateway 192.168.101.1
interface vlan x
ip address x.y.z.v 255.255.255.0

crypto key generate rsa

line vty 0 4
transport input ssh
login local
password 7
exit

line console 0
logging synchronous
login local


