# it is used to add users in a group

# synteax: usermod -a -G group-name user-name
# remember there are tww types of group 1)primary 2)secondary
# primary group is that which is on the name of the user
# secondary group is that in which we will add the user

# for example

# first we will create a group
┌──(root㉿haider)-[/home/haider]
└─# getent group
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:haider
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:haider
fax:x:21:
voice:x:22:
cdrom:x:24:haider
floppy:x:25:haider
tape:x:26:
sudo:x:27:haider
audio:x:29:haider
dip:x:30:haider
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:haider
sasl:x:45:
plugdev:x:46:haider
staff:x:50:
games:x:60:
users:x:100:haider,john,virat
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:101:
input:x:102:
sgx:x:103:
kvm:x:104:
render:x:105:
netdev:x:106:haider
mysql:x:107:
tss:x:108:
systemd-timesync:x:997:
redsocks:x:109:
kismet:x:110:
messagebus:x:111:
_ssh:x:112:
ssl-cert:x:113:postgres
redis:x:114:_gvm
plocate:x:115:
mosquitto:x:116:
wireshark:x:117:haider
tcpdump:x:118:
rdma:x:119:
bluetooth:x:120:haider
i2c:x:121:
avahi:x:122:
stunnel4:x:996:stunnel4
Debian-snmp:x:123:
_gvm:x:124:
sslh:x:125:
postgres:x:126:
pipewire:x:127:
fwupd-refresh:x:128:
scanner:x:129:saned,haider
saned:x:130:
sambashare:x:995:
inetsim:x:131:
lightdm:x:132:
geoclue:x:133:
kpadmins:x:134:
polkitd:x:994:
rtkit:x:135:
colord:x:136:
Debian-gdm:x:137:
nm-openvpn:x:138:
nm-openconnect:x:139:
kali-trusted:x:140:
haider:x:1000:
kaboxer:x:141:haider
john:x:1001:
john2:x:1500:
john3:x:1501:
john4:x:1502:
virat:x:1002:
developer1:x:1503:
pentesters:x:1003:

# then we will create the users
┌──(root㉿haider)-[/home/haider]
└─# adduser ptester1                  
info: Adding user `ptester1' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `ptester1' (1004) ...
info: Adding new user `ptester1' (1004) with group `ptester1 (1004)' ...
info: Creating home directory `/home/ptester1' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for ptester1
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
info: Adding new user `ptester1' to supplemental / extra groups `users' ...
info: Adding user `ptester1' to group `users' ...
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# adduser ptester2
info: Adding user `ptester2' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `ptester2' (1005) ...
info: Adding new user `ptester2' (1005) with group `ptester2 (1005)' ...
info: Creating home directory `/home/ptester2' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for ptester2
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
info: Adding new user `ptester2' to supplemental / extra groups `users' ...
info: Adding user `ptester2' to group `users' ...
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# adduser ptester3
info: Adding user `ptester3' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `ptester3' (1006) ...
info: Adding new user `ptester3' (1006) with group `ptester3 (1006)' ...
info: Creating home directory `/home/ptester3' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for ptester3
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
info: Adding new user `ptester3' to supplemental / extra groups `users' ...
info: Adding user `ptester3' to group `users' ...
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
ptester3:x:1006:1006:,,,:/home/ptester3:/bin/bash

┌──(root㉿haider)-[/home/haider]
└─# id ptester1
uid=1004(ptester1) gid=1004(ptester1) groups=1004(ptester1),100(users)
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# id ptester2
uid=1005(ptester2) gid=1005(ptester2) groups=1005(ptester2),100(users)
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# id ptester3                       
uid=1006(ptester3) gid=1006(ptester3) groups=1006(ptester3),100(users)



# now we will add these users in the group "pentesters"
┌──(root㉿haider)-[/home/haider]
└─# usermod -a -G pentesters ptester1 
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# id ptester1                      
uid=1004(ptester1) gid=1004(ptester1) groups=1004(ptester1),100(users),1003(pentesters)
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# usermod -a -G pentesters ptester2
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# id ptester2
uid=1005(ptester2) gid=1005(ptester2) groups=1005(ptester2),100(users),1003(pentesters)
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# usermod -a -G pentesters ptester3
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# id ptester3
uid=1006(ptester3) gid=1006(ptester3) groups=1006(ptester3),100(users),1003(pentesters)


# now you can see the users in the the group "pentesters" in /etc/group
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/group 
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:haider
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:haider
fax:x:21:
voice:x:22:
cdrom:x:24:haider
floppy:x:25:haider
tape:x:26:
sudo:x:27:haider
audio:x:29:haider
dip:x:30:haider
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:haider
sasl:x:45:
plugdev:x:46:haider
staff:x:50:
games:x:60:
users:x:100:haider,john,virat,ptester1,ptester2,ptester3
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:101:
input:x:102:
sgx:x:103:
kvm:x:104:
render:x:105:
netdev:x:106:haider
mysql:x:107:
tss:x:108:
systemd-timesync:x:997:
redsocks:x:109:
kismet:x:110:
messagebus:x:111:
_ssh:x:112:
ssl-cert:x:113:postgres
redis:x:114:_gvm
plocate:x:115:
mosquitto:x:116:
wireshark:x:117:haider
tcpdump:x:118:
rdma:x:119:
bluetooth:x:120:haider
i2c:x:121:
avahi:x:122:
stunnel4:x:996:stunnel4
Debian-snmp:x:123:
_gvm:x:124:
sslh:x:125:
postgres:x:126:
pipewire:x:127:
fwupd-refresh:x:128:
scanner:x:129:saned,haider
saned:x:130:
sambashare:x:995:
inetsim:x:131:
lightdm:x:132:
geoclue:x:133:
kpadmins:x:134:
polkitd:x:994:
rtkit:x:135:
colord:x:136:
Debian-gdm:x:137:
nm-openvpn:x:138:
nm-openconnect:x:139:
kali-trusted:x:140:
haider:x:1000:
kaboxer:x:141:haider
john:x:1001:
john2:x:1500:
john3:x:1501:
john4:x:1502:
virat:x:1002:
developer1:x:1503:
pentesters:x:1003:ptester1,ptester2,ptester3
ptester1:x:1004:
ptester2:x:1005:
ptester3:x:1006:

# here, ptester1, ptester2 and ptester3 are primary groups and pentesters is the secondary group




# it is also used to change the user name
# syntax: usermod -l new-name old-name
# but the name of primary group does not changed
# for example
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
ptester3:x:1006:1006:,,,:/home/ptester3:/bin/bash
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/group 
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:haider
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:haider
fax:x:21:
voice:x:22:
cdrom:x:24:haider
floppy:x:25:haider
tape:x:26:
sudo:x:27:haider
audio:x:29:haider
dip:x:30:haider
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:haider
sasl:x:45:
plugdev:x:46:haider
staff:x:50:
games:x:60:
users:x:100:haider,john,virat,ptester1,ptester2,ptester3
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:101:
input:x:102:
sgx:x:103:
kvm:x:104:
render:x:105:
netdev:x:106:haider
mysql:x:107:
tss:x:108:
systemd-timesync:x:997:
redsocks:x:109:
kismet:x:110:
messagebus:x:111:
_ssh:x:112:
ssl-cert:x:113:postgres
redis:x:114:_gvm
plocate:x:115:
mosquitto:x:116:
wireshark:x:117:haider
tcpdump:x:118:
rdma:x:119:
bluetooth:x:120:haider
i2c:x:121:
avahi:x:122:
stunnel4:x:996:stunnel4
Debian-snmp:x:123:
_gvm:x:124:
sslh:x:125:
postgres:x:126:
pipewire:x:127:
fwupd-refresh:x:128:
scanner:x:129:saned,haider
saned:x:130:
sambashare:x:995:
inetsim:x:131:
lightdm:x:132:
geoclue:x:133:
kpadmins:x:134:
polkitd:x:994:
rtkit:x:135:
colord:x:136:
Debian-gdm:x:137:
nm-openvpn:x:138:
nm-openconnect:x:139:
kali-trusted:x:140:
haider:x:1000:
kaboxer:x:141:haider
john:x:1001:
john2:x:1500:
john3:x:1501:
john4:x:1502:
virat:x:1002:
developer1:x:1503:
pentesters:x:1003:ptester1,ptester2,ptester3
ptester1:x:1004:
ptester2:x:1005:
ptester3:x:1006:
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# usermod -l pentesterthree ptester3
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
pentesterthree:x:1006:1006:,,,:/home/ptester3:/bin/bash
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/group 
root:x:0:
daemon:x:1:
bin:x:2:
sys:x:3:
adm:x:4:haider
tty:x:5:
disk:x:6:
lp:x:7:
mail:x:8:
news:x:9:
uucp:x:10:
man:x:12:
proxy:x:13:
kmem:x:15:
dialout:x:20:haider
fax:x:21:
voice:x:22:
cdrom:x:24:haider
floppy:x:25:haider
tape:x:26:
sudo:x:27:haider
audio:x:29:haider
dip:x:30:haider
www-data:x:33:
backup:x:34:
operator:x:37:
list:x:38:
irc:x:39:
src:x:40:
shadow:x:42:
utmp:x:43:
video:x:44:haider
sasl:x:45:
plugdev:x:46:haider
staff:x:50:
games:x:60:
users:x:100:haider,john,virat,ptester1,ptester2,pentesterthree
nogroup:x:65534:
systemd-journal:x:999:
systemd-network:x:998:
crontab:x:101:
input:x:102:
sgx:x:103:
kvm:x:104:
render:x:105:
netdev:x:106:haider
mysql:x:107:
tss:x:108:
systemd-timesync:x:997:
redsocks:x:109:
kismet:x:110:
messagebus:x:111:
_ssh:x:112:
ssl-cert:x:113:postgres
redis:x:114:_gvm
plocate:x:115:
mosquitto:x:116:
wireshark:x:117:haider
tcpdump:x:118:
rdma:x:119:
bluetooth:x:120:haider
i2c:x:121:
avahi:x:122:
stunnel4:x:996:stunnel4
Debian-snmp:x:123:
_gvm:x:124:
sslh:x:125:
postgres:x:126:
pipewire:x:127:
fwupd-refresh:x:128:
scanner:x:129:saned,haider
saned:x:130:
sambashare:x:995:
inetsim:x:131:
lightdm:x:132:
geoclue:x:133:
kpadmins:x:134:
polkitd:x:994:
rtkit:x:135:
colord:x:136:
Debian-gdm:x:137:
nm-openvpn:x:138:
nm-openconnect:x:139:
kali-trusted:x:140:
haider:x:1000:
kaboxer:x:141:haider
john:x:1001:
john2:x:1500:
john3:x:1501:
john4:x:1502:
virat:x:1002:
developer1:x:1503:
pentesters:x:1003:ptester1,ptester2,pentesterthree
ptester1:x:1004:
ptester2:x:1005:
ptester3:x:1006:



# to add some comment about user --> usermod -c "comment" user-name
# for example
┌──(root㉿haider)-[/home/haider]
└─# adduser hacker1 
info: Adding user `hacker1' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `hacker1' (1007) ...
info: Adding new user `hacker1' (1007) with group `hacker1 (1007)' ...
info: Creating home directory `/home/hacker1' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for hacker1
Enter the new value, or press ENTER for the default
	Full Name []: 
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
info: Adding new user `hacker1' to supplemental / extra groups `users' ...
info: Adding user `hacker1' to group `users' ...
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
pentesterthree:x:1006:1006:,,,:/home/ptester3:/bin/bash
hacker1:x:1007:1007:,,,:/home/hacker1:/bin/bash
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# usermod -c "it is 1st hacker" hacker1
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
pentesterthree:x:1006:1006:,,,:/home/ptester3:/bin/bash
hacker1:x:1007:1007:it is 1st hacker:/home/hacker1:/bin/bash



# to change the UID of the user --> usermod -u UID user-name
# for example
┌──(root㉿haider)-[/home/haider]
└─# usermod -u 2000 hacker1              
                                                                                       
┌──(root㉿haider)-[/home/haider]
└─# cat /etc/passwd
root:x:0:0:root:/root:/usr/bin/zsh
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
_apt:x:42:65534::/nonexistent:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:998:998:systemd Network Management:/:/usr/sbin/nologin
mysql:x:100:107:MySQL Server,,,:/nonexistent:/bin/false
tss:x:101:108:TPM software stack,,,:/var/lib/tpm:/bin/false
strongswan:x:102:65534::/var/lib/strongswan:/usr/sbin/nologin
systemd-timesync:x:997:997:systemd Time Synchronization:/:/usr/sbin/nologin
redsocks:x:103:109::/var/run/redsocks:/usr/sbin/nologin
rwhod:x:104:65534::/var/spool/rwho:/usr/sbin/nologin
iodine:x:105:65534::/run/iodine:/usr/sbin/nologin
messagebus:x:106:111::/nonexistent:/usr/sbin/nologin
miredo:x:107:65534::/var/run/miredo:/usr/sbin/nologin
redis:x:108:114::/var/lib/redis:/usr/sbin/nologin
usbmux:x:109:46:usbmux daemon,,,:/var/lib/usbmux:/usr/sbin/nologin
mosquitto:x:110:116::/var/lib/mosquitto:/usr/sbin/nologin
tcpdump:x:111:118::/nonexistent:/usr/sbin/nologin
sshd:x:112:65534::/run/sshd:/usr/sbin/nologin
_rpc:x:113:65534::/run/rpcbind:/usr/sbin/nologin
dnsmasq:x:114:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin
statd:x:115:65534::/var/lib/nfs:/usr/sbin/nologin
avahi:x:116:122:Avahi mDNS daemon,,,:/run/avahi-daemon:/usr/sbin/nologin
stunnel4:x:996:996:stunnel service system account:/var/run/stunnel4:/usr/sbin/nologin
Debian-snmp:x:117:123::/var/lib/snmp:/bin/false
_gvm:x:118:124::/var/lib/openvas:/usr/sbin/nologin
speech-dispatcher:x:119:29:Speech Dispatcher,,,:/run/speech-dispatcher:/bin/false
sslh:x:120:125::/nonexistent:/usr/sbin/nologin
postgres:x:121:126:PostgreSQL administrator,,,:/var/lib/postgresql:/bin/bash
fwupd-refresh:x:122:128:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
saned:x:123:130::/var/lib/saned:/usr/sbin/nologin
inetsim:x:124:131::/var/lib/inetsim:/usr/sbin/nologin
lightdm:x:125:132:Light Display Manager:/var/lib/lightdm:/bin/false
geoclue:x:126:133::/var/lib/geoclue:/usr/sbin/nologin
king-phisher:x:127:134::/var/lib/king-phisher:/usr/sbin/nologin
polkitd:x:994:994:polkit:/nonexistent:/usr/sbin/nologin
rtkit:x:128:135:RealtimeKit,,,:/proc:/usr/sbin/nologin
colord:x:129:136:colord colour management daemon,,,:/var/lib/colord:/usr/sbin/nologin
Debian-gdm:x:130:137:Gnome Display Manager:/var/lib/gdm3:/bin/false
nm-openvpn:x:131:138:NetworkManager OpenVPN,,,:/var/lib/openvpn/chroot:/usr/sbin/nologin
nm-openconnect:x:132:139:NetworkManager OpenConnect plugin,,,:/var/lib/NetworkManager:/usr/sbin/nologin
haider:x:1000:1000:haider,,,:/home/haider:/usr/bin/zsh
john:x:1001:1001:,,,:/home/john:/bin/bash
john2:x:1500:1500::/home/john2:/bin/sh
john3:x:1501:1501::/home/john3:/bin/sh
john4:x:1502:1502:this is john4:/home/john4:/bin/sh
virat:x:1002:1002:virat kohli,001,1234567890,0987654321,0987654321:/home/virat:/bin/bash
ptester1:x:1004:1004:,,,:/home/ptester1:/bin/bash
ptester2:x:1005:1005:,,,:/home/ptester2:/bin/bash
pentesterthree:x:1006:1006:,,,:/home/ptester3:/bin/bash
hacker1:x:2000:1007:it is 1st hacker:/home/hacker1:/bin/bash



# to add expiry date of the user -> usermod -e E-date user-name
# for example
┌──(root㉿haider)-[/home/haider]
└─# usermod -e "05/09/2023" hacker1

┌──(root㉿haider)-[/home/haider]
└─# 



# to lock the user so that it can not login even using the password
# syntax --> usermod -L username
# remember the root user can login even after unlock the user
# for example
┌──(root㉿haider)-[/home]
└─# usermod -L hacker2

┌──(haider㉿haider)-[~]
└─$ su hacker2
Password: 
su: Authentication failure
                                                                                       
┌──(haider㉿haider)-[~]
└─$ su hacker2
Password: 
su: Authentication failure



# and to unlock the user --> usermod -U username
# for example
┌──(haider㉿haider)-[~]
└─$ su hacker2
Password: 
┌──(hacker2㉿haider)-[/home/haider]
└─$ whoami
hacker2



