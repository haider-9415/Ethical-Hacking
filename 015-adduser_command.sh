# it is used to add another user

# the directory /etc/passwd has the information about the users
# format of a content in /etc/passwd --> username:password:UID:GID:GECOS:home directory:login shell
# for examlple
┌──(root㉿haider)-[/home]
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


# to add user
┌──(root㉿haider)-[/home]
└─# adduser john   
info: Adding user `john' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `john' (1001) ...
info: Adding new user `john' (1001) with group `john (1001)' ...
info: Creating home directory `/home/john' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for john
Enter the new value, or press ENTER for the default
	Full Name []:     
	Room Number []: 
	Work Phone []: 
	Home Phone []: 
	Other []: 
Is the information correct? [Y/n] y
info: Adding new user `john' to supplemental / extra groups `users' ...
info: Adding user `john' to group `users' ...
                                                                                
┌──(root㉿haider)-[/home]
└─# ls   
haider  john

# now you ccan see that there is a new user "john"
┌──(root㉿haider)-[/home]
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



# there is another directory that stores the passwords in hash format
# format of a content in /etc/shadow --> username:encrypted password:last password change:min password age:max apssword age:warning period:inactivity pariod:expiratin date:unused
# that is /etc/shadow
┌──(root㉿haider)-[/home]
└─# cat /etc/shadow
root:!:19592:0:99999:7:::
daemon:*:19592:0:99999:7:::
bin:*:19592:0:99999:7:::
sys:*:19592:0:99999:7:::
sync:*:19592:0:99999:7:::
games:*:19592:0:99999:7:::
man:*:19592:0:99999:7:::
lp:*:19592:0:99999:7:::
mail:*:19592:0:99999:7:::
news:*:19592:0:99999:7:::
uucp:*:19592:0:99999:7:::
proxy:*:19592:0:99999:7:::
www-data:*:19592:0:99999:7:::
backup:*:19592:0:99999:7:::
list:*:19592:0:99999:7:::
irc:*:19592:0:99999:7:::
_apt:*:19592:0:99999:7:::
nobody:*:19592:0:99999:7:::
systemd-network:!*:19592::::::
mysql:!:19592::::::
tss:!:19592::::::
strongswan:!:19592::::::
systemd-timesync:!*:19592::::::
redsocks:!:19592::::::
rwhod:!:19592::::::
iodine:!:19592::::::
messagebus:!:19592::::::
miredo:!:19592::::::
redis:!:19592::::::
usbmux:!:19592::::::
mosquitto:!:19592::::::
tcpdump:!:19592::::::
sshd:!:19592::::::
_rpc:!:19592::::::
dnsmasq:!:19592::::::
statd:!:19592::::::
avahi:!:19592::::::
stunnel4:!*:19592::::::
Debian-snmp:!:19592::::::
_gvm:!:19592::::::
speech-dispatcher:!:19592::::::
sslh:!:19592::::::
postgres:!:19592::::::
fwupd-refresh:!:19592::::::
saned:!:19592::::::
inetsim:!:19592::::::
lightdm:!:19592::::::
geoclue:!:19592::::::
king-phisher:!:19592::::::
polkitd:!*:19592::::::
rtkit:!:19592::::::
colord:!:19592::::::
Debian-gdm:!:19592::::::
nm-openvpn:!:19592::::::
nm-openconnect:!:19592::::::
haider:$y$j9T$UNU5oAK5fm.BWqABXyZ63.$udLHLi3TGB88KUcL/Rh5QAL2sXL7cBVI9ulKfxR8kn2:19592:0:99999:7:::
john:$y$j9T$njnXpOq4bYNN9tfRzOsNm1$t9AkGG9IQEwsOYKDo2AKH2QF1xy/y/y7xZ3C.J8A7QB:19598:0:99999:7:::


# to login in the user john
┌──(haider㉿haider)-[~]
└─$ su john
Password: 
┌──(john㉿haider)-[/home/haider]
└─$ whoami
john

┌──(john㉿haider)-[/home/haider]
└─$ exit
exit
                                                                                
┌──(haider㉿haider)-[~]
└─$ whoami
haider



# to set tour own UID, use -u UID
# for example
┌──(root㉿haider)-[/home]
└─# ls
haider  john
                                                                                
┌──(root㉿haider)-[/home]
└─# useradd -u 1500 john2
                                                                                
┌──(root㉿haider)-[/home]
└─# ls
haider  john
                                                                                
┌──(root㉿haider)-[/home]
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



# to ceate home directory creating the user id, use -m
# for example
┌──(root㉿haider)-[/home]
└─# useradd -m john3     
                                                                                
┌──(root㉿haider)-[/home]
└─# ls
haider  john  john3



# if we give name and numbers etc. durig the creation of the user then it will show in /etc/passwd
# for example
┌──(root㉿haider)-[/home]
└─# ls
haider  john  john3
                                                                                
┌──(root㉿haider)-[/home]
└─# adduser virat
info: Adding user `virat' ...
info: Selecting UID/GID from range 1000 to 59999 ...
info: Adding new group `virat' (1002) ...
info: Adding new user `virat' (1002) with group `virat (1002)' ...
info: Creating home directory `/home/virat' ...
info: Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for virat
Enter the new value, or press ENTER for the default
	Full Name []: virat kohli
	Room Number []: 001
	Work Phone []: 1234567890
	Home Phone []: 0987654321
	Other []: 0987654321
Is the information correct? [Y/n] y
info: Adding new user `virat' to supplemental / extra groups `users' ...
info: Adding user `virat' to group `users' ...
                                                                                
┌──(root㉿haider)-[/home]
└─# ls
haider  john  john3  virat
                                                                                
┌──(root㉿haider)-[/home]
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
