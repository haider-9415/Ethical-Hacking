# it is used to control a virtual machine remotely
# synteax --> ssh user_name_at_connected_machine@IP_address_of_thatr_machine

# first we have to start ssh service on that machine
# we will connect parrot machine using kali machine, so, we will have to start ssh service on parrot
┌─[root@parrot]─[/home/haider]
└──╼ #apt update
Hit:1 https://deb.parrot.sh/parrot lts InRelease
Hit:2 https://deb.parrot.sh/parrot parrot InRelease
Get:3 https://deb.parrot.sh/direct/parrot parrot-security InRelease [14.4 kB]
Hit:4 https://deb.parrot.sh/parrot parrot-backports InRelease
Get:5 https://deb.parrot.sh/direct/parrot parrot-security/main amd64 Packages [518 kB]
Fetched 532 kB in 3s (211 kB/s)   
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
All packages are up to date.

┌─[root@parrot]─[/home/haider]
└──╼ #apt install openssh-server
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
openssh-server is already the newest version (1:8.4p1-5+deb11u1).
openssh-server set to manually installed.
The following package was automatically installed and is no longer required:
  libopengl0
Use 'sudo apt autoremove' to remove it.
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.

┌─[root@parrot]─[/home/haider]
└──╼ #systemctl status ssh
○ ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; disabled; preset: enab>
     Active: inactive (dead)
       Docs: man:sshd(8)
             man:sshd_config(5)

┌─[✗]─[root@parrot]─[/home/haider]
└──╼ #cd ~

┌─[root@parrot]─[~]
└──╼ #mkdir /etc/ssh/default-keys

┌─[root@parrot]─[~]
└──╼ #mv /etc/ssh/ssh_host_* /etc/ssh/default-keys

┌─[root@parrot]─[~]
└──╼ #dpkg-reconfigure openssh-server
Creating SSH2 RSA key; this may take some time ...
3072 SHA256:LVsyxwQ7+J+lw9lYAc4x1u9TZFXeSHNSEUyvU3yv2Zs root@parrot (RSA)
Creating SSH2 ECDSA key; this may take some time ...
256 SHA256:2Nxz/WmUORxBWl8P2x52qSb9x7IqWBsJ6tPjPtKjXIc root@parrot (ECDSA)
Creating SSH2 ED25519 key; this may take some time ...
256 SHA256:pSBp+lToEf5mGrmSE3uTEnNt1gy2JaVUezNoURSh6m8 root@parrot (ED25519)
rescue-ssh.target is a disabled or a static unit, not starting it.
Use of uninitialized value $service in hash element at /usr/sbin/update-rc.d line 26, <DATA> line 44.

┌─[root@parrot]─[~]
└──╼ #systemctl start ssh.service

┌─[root@parrot]─[~]
└──╼ #systemctl enable ssh.service
Synchronizing state of ssh.service with SysV service script with /lib/systemd/systemd-sysv-install.
Executing: /lib/systemd/systemd-sysv-install enable ssh
Use of uninitialized value $service in hash element at /usr/sbin/update-rc.d line 26, <DATA> line 44.
Use of uninitialized value $service in hash element at /usr/sbin/update-rc.d line 26, <DATA> line 44.
Created symlink /etc/systemd/system/sshd.service → /lib/systemd/system/ssh.service.
Created symlink /etc/systemd/system/multi-user.target.wants/ssh.service → /lib/systemd/system/ssh.service.

┌─[root@parrot]─[~]
└──╼ #systemctl status ssh.service
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; preset: enabl>
     Active: active (running) since Sun 2023-09-03 16:44:26 IST; 1min 23s ago
       Docs: man:sshd(8)
             man:sshd_config(5)
   Main PID: 2314 (sshd)
      Tasks: 1 (limit: 4542)
     Memory: 1.9M
        CPU: 54ms
     CGroup: /system.slice/ssh.service
             └─2314 "sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups"

Sep 03 16:44:25 parrot systemd[1]: Starting ssh.service - OpenBSD Secure She>
Sep 03 16:44:26 parrot sshd[2314]: Server listening on 0.0.0.0 port 22.
Sep 03 16:44:26 parrot sshd[2314]: Server listening on :: port 22.


# we will connect using kali
┌─[root@parrot]─[/home/haider]
└──╼ #ifconfig ens33
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.143  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::7419:8d13:3b0e:6ef5  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:12:6e:fe  txqueuelen 1000  (Ethernet)
        RX packets 6  bytes 990 (990.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 20  bytes 1678 (1.6 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

┌──(root㉿haider)-[/home/haider]
└─# apt update     
Get:1 http://kali.download/kali kali-rolling InRelease [41.2 kB]
Get:2 http://kali.download/kali kali-rolling/main amd64 Packages [19.4 MB]
Get:3 http://kali.download/kali kali-rolling/main amd64 Contents (deb) [45.6 MB]                   
Get:4 http://kali.download/kali kali-rolling/contrib amd64 Packages [115 kB]                       
Get:5 http://kali.download/kali kali-rolling/contrib amd64 Contents (deb) [220 kB]                 
Get:6 http://kali.download/kali kali-rolling/non-free amd64 Packages [218 kB]                      
Get:7 http://kali.download/kali kali-rolling/non-free amd64 Contents (deb) [908 kB]                
Fetched 66.4 MB in 31s (2,127 kB/s)                                                                
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
375 packages can be upgraded. Run 'apt list --upgradable' to see them.
                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# apt install openssh-server
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
openssh-server is already the newest version (1:9.3p2-1).
openssh-server set to manually installed.
The following packages were automatically installed and are no longer required:
  libmongocrypt0 libncurses5 libtinfo5 python3-cryptography37 python3-flask-security
  python3-jaraco.classes python3-py python3-pytz-deprecation-shim python3-texttable
Use 'sudo apt autoremove' to remove them.
0 upgraded, 0 newly installed, 0 to remove and 375 not upgraded.
                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# ssh haider@192.168.180.143
The authenticity of host '192.168.180.143 (192.168.180.143)' can't be established.
ED25519 key fingerprint is SHA256:pSBp+lToEf5mGrmSE3uTEnNt1gy2JaVUezNoURSh6m8.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.180.143' (ED25519) to the list of known hosts.
haider@192.168.180.143's password: 
Linux parrot 6.1.0-1parrot1-amd64 #1 SMP PREEMPT_DYNAMIC Parrot 6.1.15-1parrot1 (2023-04-25) x86_64
 ____                      _     ____            
|  _ \ __ _ _ __ _ __ ___ | |_  / ___|  ___  ___ 
| |_) / _` | '__| '__/ _ \| __| \___ \ / _ \/ __|
|  __/ (_| | |  | | | (_) | |_   ___) |  __/ (__ 
|_|   \__,_|_|  |_|  \___/ \__| |____/ \___|\___|
                                                 



The programs included with the Parrot GNU/Linux are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Parrot GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
┌─[haider@parrot]─[~]
└──╼ $ifconfig ens33
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.180.143  netmask 255.255.255.0  broadcast 192.168.180.255
        inet6 fe80::7419:8d13:3b0e:6ef5  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:12:6e:fe  txqueuelen 1000  (Ethernet)
        RX packets 469  bytes 572703 (559.2 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 131  bytes 15820 (15.4 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

"......................................................................................."
# this part is at parrot

┌─[✗]─[root@parrot]─[~]
└──╼ #cd /home/haider/Desktop/
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #ls
README.license
"......................................................................................."

"......................................................................................."
# this part is at kali

┌─[haider@parrot]─[~]
└──╼ $cd /home/haider/Desktop/
┌─[haider@parrot]─[~/Desktop]
└──╼ $ls
README.license
┌─[haider@parrot]─[~/Desktop]
└──╼ $cat > kali.txt
this file has been made in kali linux using ssh command            
^C
┌─[✗]─[haider@parrot]─[~/Desktop]
└──╼ $
"......................................................................................."

"......................................................................................."
# this part is at parrot

┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #ls
kali.txt  README.license
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #cat kali.txt 
this file has been made in kali linux using ssh command
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #
"......................................................................................."

"......................................................................................."
# this part is at kali

┌─[✗]─[haider@parrot]─[~/Desktop]
└──╼ $sudo su
[sudo] password for haider: 
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #
"......................................................................................."


# to come out, simply enter exit
# for example
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #exit
exit
┌─[haider@parrot]─[~/Desktop]
└──╼ $exit
logout
Connection to 192.168.180.143 closed.
                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# 


