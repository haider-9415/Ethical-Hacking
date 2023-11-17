# it is simillar to ifconfig

# to find ip addresses --> ip addr
# for example
┌──(root㉿haider)-[/home/haider]
└─# ip addr       
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:0c:29:fc:68:d4 brd ff:ff:ff:ff:ff:ff
    inet 192.120.1.5/16 brd 192.120.255.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::20c:29ff:fefc:68d4/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever



# to find only ipv4 --> use -4 and to find only ipv6 --> use -6
# for example
┌──(root㉿haider)-[/home/haider]
└─# ip -4 addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    inet 192.120.1.5/16 brd 192.120.255.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever

┌──(root㉿haider)-[/home/haider]
└─# ip -6 addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 state UNKNOWN qlen 1000
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 state UNKNOWN qlen 1000
    inet6 fe80::20c:29ff:fefc:68d4/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever



# to get the the IP and MAC address of perticular interface --> ip addr show interface_name
# for example
└─# ip addr show eth0     
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:0c:29:fc:68:d4 brd ff:ff:ff:ff:ff:ff
    inet 192.120.1.5/16 brd 192.120.255.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::20c:29ff:fefc:68d4/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
                                                                                                                         
┌──(root㉿haider)-[/home/haider]
└─# ip addr show lo  
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever



# to get more information about the interfaces, use -s
# for example
┌──(root㉿haider)-[/home/haider]
└─# ip -s addr     
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
    RX:  bytes packets errors dropped  missed   mcast           
          1440      24      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          1440      24      0       0       0       0 
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:0c:29:fc:68:d4 brd ff:ff:ff:ff:ff:ff
    inet 192.120.1.5/16 brd 192.120.255.255 scope global noprefixroute eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::20c:29ff:fefc:68d4/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
    RX:  bytes packets errors dropped  missed   mcast           
          9865      66      0       0       0       0 
    TX:  bytes packets errors dropped carrier collsns           
          9054      97      0       0       0       0 


