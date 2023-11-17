# it is used to check whether we can connect a server on internet or not
# it uses ICMP(Internet Control Message Protocol) to send requests

# for example
┌──(root㉿haider)-[/home/haider]
└─# ping google.com
PING google.com (172.217.174.238) 56(84) bytes of data.
64 bytes from bom12s03-in-f14.1e100.net (172.217.174.238): icmp_seq=1 ttl=128 time=45.5 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=2 ttl=128 time=43.4 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=3 ttl=128 time=45.9 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=4 ttl=128 time=44.3 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=5 ttl=128 time=46.5 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=6 ttl=128 time=45.5 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=7 ttl=128 time=52.4 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=8 ttl=128 time=46.1 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=9 ttl=128 time=43.9 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=10 ttl=128 time=46.9 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=11 ttl=128 time=44.3 ms
64 bytes from 238.174.217.172.in-addr.arpa (172.217.174.238): icmp_seq=12 ttl=128 time=46.3 ms
^C
--- google.com ping statistics ---
12 packets transmitted, 12 received, 0% packet loss, time 11019ms
rtt min/avg/max/mdev = 43.395/45.932/52.432/2.227 ms
# in this, it sent 12 packets and all are received perfectly, i.e., we can connect google server on internet



