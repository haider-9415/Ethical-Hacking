# it shows the hostname of the user
# for example
┌──(haider㉿haider)-[~]
└─$ hostname
haider



# the hostname can be changed
# syntax --> hostname old_name new_name
# for example
┌──(root㉿haider)-[/home/haider]
└─# hostname HackTech

┌──(haider㉿HackTech)-[~]
└─$ hostname         
HackTech




# we can IP address of the machine at which the user is working using "-I" for IPv4 and "-i" for IPv6
# for example
┌──(root㉿haider)-[/home/haider]
└─# ifconfig eth0  
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.128  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::20c:29ff:fefc:68d4  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:fc:68:d4  txqueuelen 1000  (Ethernet)
        RX packets 1899  bytes 2314309 (2.2 MiB)
        RX errors 7  dropped 7  overruns 0  frame 0
        TX packets 1268  bytes 98219 (95.9 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 19  base 0x2000  

                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# hostname -I
192.168.180.128 
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# hostname -i
fe80::20c:29ff:fefc:68d4%eth0 192.168.180.128





