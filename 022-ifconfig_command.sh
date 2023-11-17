# it is used to see the IP address and MAC address of the perticular machine

# for example
┌──(root㉿haider)-[/home/haider]
└─# ifconfig     
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.128  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::20c:29ff:fefc:68d4  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:fc:68:d4  txqueuelen 1000  (Ethernet)
        RX packets 63  bytes 9655 (9.4 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 93  bytes 8818 (8.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19  base 0x2000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 24  bytes 1440 (1.4 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24  bytes 1440 (1.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0



# to get information about perticular interface, use the name of that interface
┌──(root㉿haider)-[/home/haider]
└─# ifconfig eth0
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.128  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::20c:29ff:fefc:68d4  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:fc:68:d4  txqueuelen 1000  (Ethernet)
        RX packets 63  bytes 9655 (9.4 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 93  bytes 8818 (8.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19  base 0x2000  
                        
┌──(root㉿haider)-[/home/haider]
└─# ifconfig lo  
lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 24  bytes 1440 (1.4 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 24  bytes 1440 (1.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0




# it is used to change IP address and MAC address also
# for example
┌──(root㉿haider)-[/home/haider]
└─# ifconfig eth0
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.128  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::20c:29ff:fefc:68d4  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:fc:68:d4  txqueuelen 1000  (Ethernet)
        RX packets 66  bytes 9865 (9.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 97  bytes 9054 (8.8 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19  base 0x2000  

┌──(root㉿haider)-[/home/haider]
└─# ifconfig eth0 192.120.1.5 netmask 255.255.0.0
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# ifconfig eth0                                
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.120.1.5  netmask 255.255.0.0  broadcast 192.120.255.255
        inet6 fe80::20c:29ff:fefc:68d4  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:fc:68:d4  txqueuelen 1000  (Ethernet)
        RX packets 66  bytes 9865 (9.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 97  bytes 9054 (8.8 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19  base 0x2000  




