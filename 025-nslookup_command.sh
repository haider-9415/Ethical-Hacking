# it is used to find information about a domain

# for example
┌──(root㉿haider)-[/home/haider]
└─# nslookup google.com
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
Name:	google.com
Address: 172.217.167.238
Name:	google.com
Address: 2404:6800:4009:810::200e



# to find IPv4 address, use -type=A
# for example
┌──(root㉿haider)-[/home/haider]
└─# nslookup -type=A google.com
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
Name:	google.com
Address: 172.217.167.174



# to find IPv6 address, use -type=AAAA
# for example 
┌──(root㉿haider)-[/home/haider]
└─# nslookup -type=AAAA google.com
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
Name:	google.com
Address: 2404:6800:4002:810::200e



# to find some kind of text, use -type=txt
# for  example
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# nslookup -type=txt google.com
;; Truncated, retrying in TCP mode.
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
google.com	text = "apple-domain-verification=30afIBcvSuDV2PLX"
google.com	text = "facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95"
google.com	text = "google-site-verification=TV9-DBe4R80X4v0M4U_bd_J9cpOJM0nikft0jAgjmsQ"
google.com	text = "v=spf1 include:_spf.google.com ~all"
google.com	text = "globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8="
google.com	text = "MS=E4A68B9AB2BB9670BCE15412F62916164C0B20BB"
google.com	text = "webexdomainverification.8YX6G=6e6922db-e3e6-4a36-904e-a805c28087fa"
google.com	text = "atlassian-domain-verification=5YjTmWmjI92ewqkx2oXmBaD60Td9zWon9r6eakvHX6B77zzkFQto8PQ9QsKnbf4I"
google.com	text = "docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e"
google.com	text = "onetrust-domain-verification=de01ed21f2fa4d8781cbc3ffb89cf4ef"
google.com	text = "docusign=1b0a6754-49b1-4db5-8540-d2c12664b289"
google.com	text = "google-site-verification=wD8N7i1JTNTkezJ49swvWW48f8_9xveREV4oB-0Hf5o"



# to find information of mail exchanger, use -type=mx
# for exmaple
┌──(root㉿haider)-[/home/haider]
└─# nslookup -type=mx google.com
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
google.com	mail exchanger = 10 smtp.google.com.

Authoritative answers can be found from:
smtp.google.com	internet address = 172.253.118.26
smtp.google.com	internet address = 74.125.200.26
smtp.google.com	internet address = 74.125.200.27
smtp.google.com	internet address = 74.125.130.26
smtp.google.com	internet address = 74.125.130.27
smtp.google.com	has AAAA address 2404:6800:4003:c05::1a
smtp.google.com	has AAAA address 2404:6800:4003:c00::1b
smtp.google.com	has AAAA address 2404:6800:4003:c00::1a
smtp.google.com	has AAAA address 2404:6800:4003:c01::1a

                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# nslookup -type=mx tesla.com 
Server:		192.168.180.2
Address:	192.168.180.2#53

Non-authoritative answer:
tesla.com	mail exchanger = 10 tesla-com.mail.protection.outlook.com.




# we can mirror a website using wget, i.e., it means we can download files mainly html files of that website
# syntax --> wget -m -k -p URL
# for example
┌──(root㉿haider)-[/home/haider/mirroring]
└─# wget -m -k -p https://www.codewithharry.com/  
--2023-09-02 15:01:05--  https://www.codewithharry.com/
Resolving www.codewithharry.com (www.codewithharry.com)... 104.17.241.31, 104.18.118.88, 2606:4700:8390:8eb8:d339:4:6811:f11f
Connecting to www.codewithharry.com (www.codewithharry.com)|104.17.241.31|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/index.html’

www.codewithharry.com/index.ht     [ <=>                                              ]  24.60K  --.-KB/s    in 0.001s  

2023-09-02 15:01:06 (37.2 MB/s) - ‘www.codewithharry.com/index.html’ saved [25187]

Loading robots.txt; please ignore errors.
--2023-09-02 15:01:06--  https://www.codewithharry.com/robots.txt
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 404 Not Found
2023-09-02 15:01:06 ERROR 404: Not Found.

--2023-09-02 15:01:06--  https://www.codewithharry.com/img/favicon.ico
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [image/x-icon]
Saving to: ‘www.codewithharry.com/img/favicon.ico’

www.codewithharry.com/img/favi     [ <=>                                              ]   1.12K  --.-KB/s    in 0s      

2023-09-02 15:01:06 (12.7 MB/s) - ‘www.codewithharry.com/img/favicon.ico’ saved [1150]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/css/1787537b0a061e74.css
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/css]
Saving to: ‘www.codewithharry.com/_next/static/css/1787537b0a061e74.css’

www.codewithharry.com/_next/st     [ <=>                                              ]  40.62K  --.-KB/s    in 0.001s  

2023-09-02 15:01:06 (36.5 MB/s) - ‘www.codewithharry.com/_next/static/css/1787537b0a061e74.css’ saved [41600]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/css/470c5e8db7cdc7e9.css
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/css]
Saving to: ‘www.codewithharry.com/_next/static/css/470c5e8db7cdc7e9.css’

www.codewithharry.com/_next/st     [ <=>                                              ]  16.44K  --.-KB/s    in 0.001s  

2023-09-02 15:01:06 (30.2 MB/s) - ‘www.codewithharry.com/_next/static/css/470c5e8db7cdc7e9.css’ saved [16837]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/polyfills-5cd94c89d3acac5f.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/polyfills-5cd94c89d3acac5f.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  89.29K  --.-KB/s    in 0.001s  

2023-09-02 15:01:06 (62.9 MB/s) - ‘www.codewithharry.com/_next/static/chunks/polyfills-5cd94c89d3acac5f.js’ saved [91434]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/webpack-d7e16813cb5ed3a8.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/webpack-d7e16813cb5ed3a8.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   3.45K  --.-KB/s    in 0s      

2023-09-02 15:01:06 (44.7 MB/s) - ‘www.codewithharry.com/_next/static/chunks/webpack-d7e16813cb5ed3a8.js’ saved [3536]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/framework-89f2f7d214569455.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/framework-89f2f7d214569455.js’

www.codewithharry.com/_next/st     [ <=>                                              ] 137.45K  --.-KB/s    in 0.03s   

2023-09-02 15:01:06 (4.38 MB/s) - ‘www.codewithharry.com/_next/static/chunks/framework-89f2f7d214569455.js’ saved [140749]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/main-2fa7a1222a196856.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/main-2fa7a1222a196856.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  99.57K  --.-KB/s    in 0.001s  

2023-09-02 15:01:06 (86.0 MB/s) - ‘www.codewithharry.com/_next/static/chunks/main-2fa7a1222a196856.js’ saved [101961]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/pages/_app-860e15f6f9980e32.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/_app-860e15f6f9980e32.js’

www.codewithharry.com/_next/st     [ <=>                                              ] 365.41K  2.32MB/s    in 0.2s    

2023-09-02 15:01:06 (2.32 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/_app-860e15f6f9980e32.js’ saved [374179]

--2023-09-02 15:01:06--  https://www.codewithharry.com/_next/static/chunks/8010-30985a3ffa82839f.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/8010-30985a3ffa82839f.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  27.86K  --.-KB/s    in 0s      

2023-09-02 15:01:07 (87.4 MB/s) - ‘www.codewithharry.com/_next/static/chunks/8010-30985a3ffa82839f.js’ saved [28525]

--2023-09-02 15:01:07--  https://www.codewithharry.com/_next/static/chunks/pages/index-ca2c963e3e043274.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/index-ca2c963e3e043274.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   9.89K  --.-KB/s    in 0s      

2023-09-02 15:01:07 (75.6 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/index-ca2c963e3e043274.js’ saved [10129]

--2023-09-02 15:01:07--  https://www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_buildManifest.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_buildManifest.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   4.08K  --.-KB/s    in 0s      

2023-09-02 15:01:07 (61.2 MB/s) - ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_buildManifest.js’ saved [4177]

--2023-09-02 15:01:07--  https://www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_ssgManifest.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 77 [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_ssgManifest.js’

www.codewithharry.com/_next/st 100%[=================================================>]      77  --.-KB/s    in 0s      

2023-09-02 15:01:07 (1.17 MB/s) - ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_ssgManifest.js’ saved [77/77]

--2023-09-02 15:01:07--  https://www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_middlewareManifest.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 92 [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_middlewareManifest.js’

www.codewithharry.com/_next/st 100%[=================================================>]      92  --.-KB/s    in 0s      

2023-09-02 15:01:07 (1.14 MB/s) - ‘www.codewithharry.com/_next/static/6D7yx1hh9dOYNeqlofXD4/_middlewareManifest.js’ saved [92/92]

--2023-09-02 15:01:07--  https://www.codewithharry.com/videos/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/videos/index.html’

www.codewithharry.com/videos/i     [ <=>                                              ]  66.81K  --.-KB/s    in 0.001s  

2023-09-02 15:01:07 (81.8 MB/s) - ‘www.codewithharry.com/videos/index.html’ saved [68411]

--2023-09-02 15:01:07--  https://www.codewithharry.com/tutorials/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorials/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  21.91K  --.-KB/s    in 0.001s  

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:07 (34.9 MB/s) - ‘www.codewithharry.com/tutorials/index.html’ saved [22438]

--2023-09-02 15:01:07--  https://www.codewithharry.com/blog/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blog/index.html’

www.codewithharry.com/blog/ind     [ <=>                                              ]  16.42K  --.-KB/s    in 0s      

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:07 (116 MB/s) - ‘www.codewithharry.com/blog/index.html’ saved [16815]

--2023-09-02 15:01:07--  https://www.codewithharry.com/notes/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/notes/index.html’

www.codewithharry.com/notes/in     [ <=>                                              ]  34.46K  --.-KB/s    in 0s      

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:08 (95.4 MB/s) - ‘www.codewithharry.com/notes/index.html’ saved [35288]

--2023-09-02 15:01:08--  https://www.codewithharry.com/contact/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/contact/index.html’

www.codewithharry.com/contact/     [ <=>                                              ]  20.03K  --.-KB/s    in 0s      

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:08 (121 MB/s) - ‘www.codewithharry.com/contact/index.html’ saved [20512]

--2023-09-02 15:01:08--  https://www.codewithharry.com/my-gear/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/my-gear/index.html’

www.codewithharry.com/my-gear/     [ <=>                                              ]  43.54K  --.-KB/s    in 0s      

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:08 (139 MB/s) - ‘www.codewithharry.com/my-gear/index.html’ saved [44583]

--2023-09-02 15:01:08--  https://www.codewithharry.com/work/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/work/index.html’

www.codewithharry.com/work/ind     [ <=>                                              ]  22.21K  --.-KB/s    in 0s      

Last-modified header missing -- time-stamps turned off.
2023-09-02 15:01:08 (129 MB/s) - ‘www.codewithharry.com/work/index.html’ saved [22743]

--2023-09-02 15:01:08--  https://www.codewithharry.com/tutorial/html-home/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/html-home/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  92.80K  --.-KB/s    in 0.001s  

2023-09-02 15:01:08 (61.7 MB/s) - ‘www.codewithharry.com/tutorial/html-home/index.html’ saved [95023]

--2023-09-02 15:01:08--  https://www.codewithharry.com/tutorial/css-home/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/css-home/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  94.86K  --.-KB/s    in 0.002s  

2023-09-02 15:01:09 (57.4 MB/s) - ‘www.codewithharry.com/tutorial/css-home/index.html’ saved [97136]

--2023-09-02 15:01:09--  https://www.codewithharry.com/tutorial/js/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/js/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  85.88K  --.-KB/s    in 0.003s  

2023-09-02 15:01:09 (27.2 MB/s) - ‘www.codewithharry.com/tutorial/js/index.html’ saved [87940]

--2023-09-02 15:01:09--  https://www.codewithharry.com/tutorial/c/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/c/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  84.10K  --.-KB/s    in 0.001s  

2023-09-02 15:01:09 (74.5 MB/s) - ‘www.codewithharry.com/tutorial/c/index.html’ saved [86121]

--2023-09-02 15:01:09--  https://www.codewithharry.com/tutorial/cplusplus/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/cplusplus/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ] 104.37K  --.-KB/s    in 0.002s  

2023-09-02 15:01:10 (53.8 MB/s) - ‘www.codewithharry.com/tutorial/cplusplus/index.html’ saved [106870]

--2023-09-02 15:01:10--  https://www.codewithharry.com/tutorial/java/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/java/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  79.67K  --.-KB/s    in 0.001s  

2023-09-02 15:01:10 (84.6 MB/s) - ‘www.codewithharry.com/tutorial/java/index.html’ saved [81578]

--2023-09-02 15:01:10--  https://www.codewithharry.com/tutorial/python/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/python/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ] 107.98K  --.-KB/s    in 0.002s  

2023-09-02 15:01:10 (58.1 MB/s) - ‘www.codewithharry.com/tutorial/python/index.html’ saved [110575]

--2023-09-02 15:01:10--  https://www.codewithharry.com/tutorial/php/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/php/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  82.20K  --.-KB/s    in 0.001s  

2023-09-02 15:01:10 (68.4 MB/s) - ‘www.codewithharry.com/tutorial/php/index.html’ saved [84170]

--2023-09-02 15:01:10--  https://www.codewithharry.com/tutorial/react-home/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/tutorial/react-home/index.html’

www.codewithharry.com/tutorial     [ <=>                                              ]  57.35K  --.-KB/s    in 0.001s  

2023-09-02 15:01:10 (96.4 MB/s) - ‘www.codewithharry.com/tutorial/react-home/index.html’ saved [58727]

--2023-09-02 15:01:10--  https://www.codewithharry.com/&quot;https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1352&amp;q=80&quot;
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 308 Permanent Redirect
Location: /&quot;https:/images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1352&amp;q=80&quot; [following]
--2023-09-02 15:01:11--  https://www.codewithharry.com/&quot;https:/images.unsplash.com/photo-1498050108023-c5249f4df085?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1352&amp;q=80&quot;
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 308 Permanent Redirect
Location: /&quot;https:/images.unsplash.com/photo-1498050108023-c5249f4df085/?ixlib=rb-1.2.1&amp%3Bixid=eyJhcHBfaWQiOjEyMDd9&amp%3Bauto=format&amp%3Bfit=crop&amp%3Bw=1352&amp%3Bq=80&quot%3B= [following]
--2023-09-02 15:01:11--  https://www.codewithharry.com/&quot;https:/images.unsplash.com/photo-1498050108023-c5249f4df085/?ixlib=rb-1.2.1&amp%3Bixid=eyJhcHBfaWQiOjEyMDd9&amp%3Bauto=format&amp%3Bfit=crop&amp%3Bw=1352&amp%3Bq=80&quot%3B=
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 404 Not Found
2023-09-02 15:01:11 ERROR 404: Not Found.

--2023-09-02 15:01:11--  https://www.codewithharry.com/img/logo-blue.png
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 35387 (35K) [image/png]
Saving to: ‘www.codewithharry.com/img/logo-blue.png’

www.codewithharry.com/img/logo 100%[=================================================>]  34.56K  --.-KB/s    in 0.001s  

2023-09-02 15:01:11 (54.5 MB/s) - ‘www.codewithharry.com/img/logo-blue.png’ saved [35387/35387]

--2023-09-02 15:01:11--  https://www.codewithharry.com/_next/static/chunks/d64684d8-36a803646e771552.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 757 [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/d64684d8-36a803646e771552.js’

www.codewithharry.com/_next/st 100%[=================================================>]     757  --.-KB/s    in 0s      

2023-09-02 15:01:11 (10.5 MB/s) - ‘www.codewithharry.com/_next/static/chunks/d64684d8-36a803646e771552.js’ saved [757/757]

--2023-09-02 15:01:11--  https://www.codewithharry.com/_next/static/chunks/pages/videos-03bd799c2daefb95.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/videos-03bd799c2daefb95.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   4.16K  --.-KB/s    in 0s      

2023-09-02 15:01:11 (63.0 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/videos-03bd799c2daefb95.js’ saved [4262]

--2023-09-02 15:01:11--  https://www.codewithharry.com/_next/static/chunks/pages/tutorials-b6f71ac7d895e844.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/tutorials-b6f71ac7d895e844.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   8.55K  --.-KB/s    in 0s      

2023-09-02 15:01:11 (72.3 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/tutorials-b6f71ac7d895e844.js’ saved [8756]

--2023-09-02 15:01:11--  https://www.codewithharry.com/img/notes/python.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7480 (7.3K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/python.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.30K  --.-KB/s    in 0s      

2023-09-02 15:01:11 (137 MB/s) - ‘www.codewithharry.com/img/notes/python.webp’ saved [7480/7480]

--2023-09-02 15:01:11--  https://www.codewithharry.com/img/notes/c.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 5226 (5.1K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/c.webp’

www.codewithharry.com/img/note 100%[=================================================>]   5.10K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (62.0 MB/s) - ‘www.codewithharry.com/img/notes/c.webp’ saved [5226/5226]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/cpp.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 5218 (5.1K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/cpp.webp’

www.codewithharry.com/img/note 100%[=================================================>]   5.10K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (84.7 MB/s) - ‘www.codewithharry.com/img/notes/cpp.webp’ saved [5218/5218]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/java.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 6558 (6.4K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/java.webp’

www.codewithharry.com/img/note 100%[=================================================>]   6.40K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (104 MB/s) - ‘www.codewithharry.com/img/notes/java.webp’ saved [6558/6558]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/html.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7444 (7.3K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/html.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.27K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (112 MB/s) - ‘www.codewithharry.com/img/notes/html.webp’ saved [7444/7444]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/css.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7344 (7.2K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/css.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.17K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (123 MB/s) - ‘www.codewithharry.com/img/notes/css.webp’ saved [7344/7344]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/js.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7644 (7.5K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/js.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.46K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (84.8 MB/s) - ‘www.codewithharry.com/img/notes/js.webp’ saved [7644/7644]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/php.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7984 (7.8K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/php.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.80K  --.-KB/s    in 0s      

2023-09-02 15:01:12 (128 MB/s) - ‘www.codewithharry.com/img/notes/php.webp’ saved [7984/7984]

--2023-09-02 15:01:12--  https://www.codewithharry.com/img/notes/reactjs.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 8510 (8.3K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/reactjs.webp’

www.codewithharry.com/img/note 100%[=================================================>]   8.31K  --.-KB/s    in 0s      

2023-09-02 15:01:13 (66.6 MB/s) - ‘www.codewithharry.com/img/notes/reactjs.webp’ saved [8510/8510]

--2023-09-02 15:01:13--  https://www.codewithharry.com/_next/static/chunks/pages/blog-3d4a4d1ac6de7f9d.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/blog-3d4a4d1ac6de7f9d.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  12.08K  --.-KB/s    in 0s      

2023-09-02 15:01:13 (105 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/blog-3d4a4d1ac6de7f9d.js’ saved [12374]

--2023-09-02 15:01:13--  https://www.codewithharry.com/_next/static/chunks/pages/notes-edbe135cd0eae796.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/notes-edbe135cd0eae796.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  23.61K  --.-KB/s    in 0s      

2023-09-02 15:01:13 (77.4 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/notes-edbe135cd0eae796.js’ saved [24174]

--2023-09-02 15:01:13--  https://www.codewithharry.com/img/notes/android.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7054 (6.9K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/android.webp’

www.codewithharry.com/img/note 100%[=================================================>]   6.89K  --.-KB/s    in 0s      

2023-09-02 15:01:13 (59.4 MB/s) - ‘www.codewithharry.com/img/notes/android.webp’ saved [7054/7054]

--2023-09-02 15:01:13--  https://www.codewithharry.com/img/notes/dsa.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7332 (7.2K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/dsa.webp’

www.codewithharry.com/img/note 100%[=================================================>]   7.16K  --.-KB/s    in 0s      

2023-09-02 15:01:13 (111 MB/s) - ‘www.codewithharry.com/img/notes/dsa.webp’ saved [7332/7332]

--2023-09-02 15:01:13--  https://www.codewithharry.com/blogpost/python-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/python-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  55.64K  --.-KB/s    in 0.1s    

2023-09-02 15:01:13 (541 KB/s) - ‘www.codewithharry.com/blogpost/python-cheatsheet/index.html’ saved [56976]

--2023-09-02 15:01:13--  https://www.codewithharry.com/blogpost/c-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/c-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  46.54K  --.-KB/s    in 0.001s  

2023-09-02 15:01:14 (82.9 MB/s) - ‘www.codewithharry.com/blogpost/c-cheatsheet/index.html’ saved [47659]

--2023-09-02 15:01:14--  https://www.codewithharry.com/blogpost/cpp-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/cpp-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  40.68K  --.-KB/s    in 0s      

2023-09-02 15:01:14 (99.5 MB/s) - ‘www.codewithharry.com/blogpost/cpp-cheatsheet/index.html’ saved [41657]

--2023-09-02 15:01:14--  https://www.codewithharry.com/blogpost/java-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/java-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  62.01K  --.-KB/s    in 0.001s  

2023-09-02 15:01:14 (108 MB/s) - ‘www.codewithharry.com/blogpost/java-cheatsheet/index.html’ saved [63502]

--2023-09-02 15:01:14--  https://www.codewithharry.com/blogpost/html-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/html-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  41.81K  --.-KB/s    in 0s      

2023-09-02 15:01:14 (112 MB/s) - ‘www.codewithharry.com/blogpost/html-cheatsheet/index.html’ saved [42815]

--2023-09-02 15:01:14--  https://www.codewithharry.com/blogpost/css-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/css-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  44.20K  --.-KB/s    in 0s      

2023-09-02 15:01:15 (96.9 MB/s) - ‘www.codewithharry.com/blogpost/css-cheatsheet/index.html’ saved [45257]

--2023-09-02 15:01:15--  https://www.codewithharry.com/img/notes/flask.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 16860 (16K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/flask.webp’

www.codewithharry.com/img/note 100%[=================================================>]  16.46K  --.-KB/s    in 0s      

2023-09-02 15:01:15 (93.1 MB/s) - ‘www.codewithharry.com/img/notes/flask.webp’ saved [16860/16860]

--2023-09-02 15:01:15--  https://www.codewithharry.com/blogpost/flask-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/flask-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  28.01K  --.-KB/s    in 0s      

2023-09-02 15:01:15 (136 MB/s) - ‘www.codewithharry.com/blogpost/flask-cheatsheet/index.html’ saved [28680]

--2023-09-02 15:01:15--  https://www.codewithharry.com/blogpost/javascript-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/javascript-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  43.17K  --.-KB/s    in 0s      

2023-09-02 15:01:15 (99.9 MB/s) - ‘www.codewithharry.com/blogpost/javascript-cheatsheet/index.html’ saved [44207]

--2023-09-02 15:01:15--  https://www.codewithharry.com/blogpost/php-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/php-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  55.35K  --.-KB/s    in 0.001s  

2023-09-02 15:01:16 (78.6 MB/s) - ‘www.codewithharry.com/blogpost/php-cheatsheet/index.html’ saved [56677]

--2023-09-02 15:01:16--  https://www.codewithharry.com/img/notes/mysql.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 7120 (7.0K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/mysql.webp’

www.codewithharry.com/img/note 100%[=================================================>]   6.95K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (75.1 MB/s) - ‘www.codewithharry.com/img/notes/mysql.webp’ saved [7120/7120]

--2023-09-02 15:01:16--  https://www.codewithharry.com/blogpost/mysql-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/mysql-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  45.92K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (108 MB/s) - ‘www.codewithharry.com/blogpost/mysql-cheatsheet/index.html’ saved [47023]

--2023-09-02 15:01:16--  https://www.codewithharry.com/img/notes/django.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 1470 (1.4K) [image/webp]
Saving to: ‘www.codewithharry.com/img/notes/django.webp’

www.codewithharry.com/img/note 100%[=================================================>]   1.44K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (11.1 MB/s) - ‘www.codewithharry.com/img/notes/django.webp’ saved [1470/1470]

--2023-09-02 15:01:16--  https://www.codewithharry.com/blogpost/django-cheatsheet/
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘www.codewithharry.com/blogpost/django-cheatsheet/index.html’

www.codewithharry.com/blogpost     [ <=>                                              ]  29.36K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (146 MB/s) - ‘www.codewithharry.com/blogpost/django-cheatsheet/index.html’ saved [30068]

--2023-09-02 15:01:16--  https://www.codewithharry.com/_next/static/chunks/1bfc9850-3d42d4baea78057f.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/1bfc9850-3d42d4baea78057f.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   1.53K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (11.8 MB/s) - ‘www.codewithharry.com/_next/static/chunks/1bfc9850-3d42d4baea78057f.js’ saved [1570]

--2023-09-02 15:01:16--  https://www.codewithharry.com/_next/static/chunks/pages/contact-8842ad463dc553cf.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/contact-8842ad463dc553cf.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   2.08K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (29.0 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/contact-8842ad463dc553cf.js’ saved [2132]

--2023-09-02 15:01:16--  https://www.codewithharry.com/_next/static/chunks/pages/my-gear-8bb82632c68f2a6b.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/my-gear-8bb82632c68f2a6b.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  13.65K  --.-KB/s    in 0s      

2023-09-02 15:01:16 (113 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/my-gear-8bb82632c68f2a6b.js’ saved [13980]

--2023-09-02 15:01:16--  https://www.codewithharry.com/img/gears/canon.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 290574 (284K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/canon.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 283.76K  --.-KB/s    in 0.1s    

2023-09-02 15:01:17 (2.29 MB/s) - ‘www.codewithharry.com/img/gears/canon.webp’ saved [290574/290574]

--2023-09-02 15:01:17--  https://www.codewithharry.com/img/gears/iphone.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 280802 (274K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/iphone.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 274.22K  --.-KB/s    in 0.1s    

2023-09-02 15:01:17 (2.11 MB/s) - ‘www.codewithharry.com/img/gears/iphone.webp’ saved [280802/280802]

--2023-09-02 15:01:17--  https://www.codewithharry.com/img/gears/lenovo.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 102328 (100K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/lenovo.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  99.93K  --.-KB/s    in 0.1s    

2023-09-02 15:01:18 (811 KB/s) - ‘www.codewithharry.com/img/gears/lenovo.webp’ saved [102328/102328]

--2023-09-02 15:01:18--  https://www.codewithharry.com/img/gears/yeti.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 166722 (163K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/yeti.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 162.81K  --.-KB/s    in 0.06s   

2023-09-02 15:01:18 (2.55 MB/s) - ‘www.codewithharry.com/img/gears/yeti.webp’ saved [166722/166722]

--2023-09-02 15:01:18--  https://www.codewithharry.com/img/gears/snowball.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 282768 (276K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/snowball.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 276.14K  1.46MB/s    in 0.2s    

2023-09-02 15:01:18 (1.46 MB/s) - ‘www.codewithharry.com/img/gears/snowball.webp’ saved [282768/282768]

--2023-09-02 15:01:18--  https://www.codewithharry.com/img/gears/boya.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 12296 (12K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/boya.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  12.01K  --.-KB/s    in 0s      

2023-09-02 15:01:19 (113 MB/s) - ‘www.codewithharry.com/img/gears/boya.webp’ saved [12296/12296]

--2023-09-02 15:01:19--  https://www.codewithharry.com/img/gears/rode.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 105056 (103K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/rode.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 102.59K  --.-KB/s    in 0.1s    

2023-09-02 15:01:19 (703 KB/s) - ‘www.codewithharry.com/img/gears/rode.webp’ saved [105056/105056]

--2023-09-02 15:01:19--  https://www.codewithharry.com/img/gears/ipad.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 21840 (21K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/ipad.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  21.33K  --.-KB/s    in 0s      

2023-09-02 15:01:19 (118 MB/s) - ‘www.codewithharry.com/img/gears/ipad.webp’ saved [21840/21840]

--2023-09-02 15:01:19--  https://www.codewithharry.com/img/gears/macbook.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 13148 (13K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/macbook.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  12.84K  --.-KB/s    in 0s      

2023-09-02 15:01:19 (104 MB/s) - ‘www.codewithharry.com/img/gears/macbook.webp’ saved [13148/13148]

--2023-09-02 15:01:19--  https://www.codewithharry.com/img/gears/asus.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 22412 (22K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/asus.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  21.89K  --.-KB/s    in 0s      

2023-09-02 15:01:20 (134 MB/s) - ‘www.codewithharry.com/img/gears/asus.webp’ saved [22412/22412]

--2023-09-02 15:01:20--  https://www.codewithharry.com/img/gears/intel.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 306492 (299K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/intel.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 299.31K  1.52MB/s    in 0.2s    

2023-09-02 15:01:20 (1.52 MB/s) - ‘www.codewithharry.com/img/gears/intel.webp’ saved [306492/306492]

--2023-09-02 15:01:20--  https://www.codewithharry.com/img/gears/nvidia.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 285098 (278K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/nvidia.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 278.42K  --.-KB/s    in 0.1s    

2023-09-02 15:01:20 (2.13 MB/s) - ‘www.codewithharry.com/img/gears/nvidia.webp’ saved [285098/285098]

--2023-09-02 15:01:20--  https://www.codewithharry.com/img/gears/adata.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 26700 (26K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/adata.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  26.07K  --.-KB/s    in 0.001s  

2023-09-02 15:01:21 (34.8 MB/s) - ‘www.codewithharry.com/img/gears/adata.webp’ saved [26700/26700]

--2023-09-02 15:01:21--  https://www.codewithharry.com/img/gears/msi.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 234956 (229K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/msi.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 229.45K   936KB/s    in 0.2s    

2023-09-02 15:01:21 (936 KB/s) - ‘www.codewithharry.com/img/gears/msi.webp’ saved [234956/234956]

--2023-09-02 15:01:21--  https://www.codewithharry.com/img/gears/antec.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 29750 (29K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/antec.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  29.05K  --.-KB/s    in 0.001s  

2023-09-02 15:01:21 (42.2 MB/s) - ‘www.codewithharry.com/img/gears/antec.webp’ saved [29750/29750]

--2023-09-02 15:01:21--  https://www.codewithharry.com/img/gears/nvme.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 15608 (15K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/nvme.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  15.24K  --.-KB/s    in 0s      

2023-09-02 15:01:22 (123 MB/s) - ‘www.codewithharry.com/img/gears/nvme.webp’ saved [15608/15608]

--2023-09-02 15:01:22--  https://www.codewithharry.com/img/gears/case.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 161748 (158K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/case.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 157.96K  --.-KB/s    in 0.1s    

2023-09-02 15:01:22 (1.15 MB/s) - ‘www.codewithharry.com/img/gears/case.webp’ saved [161748/161748]

--2023-09-02 15:01:22--  https://www.codewithharry.com/img/gears/cool.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 177320 (173K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/cool.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 173.16K  --.-KB/s    in 0.1s    

2023-09-02 15:01:22 (1.34 MB/s) - ‘www.codewithharry.com/img/gears/cool.webp’ saved [177320/177320]

--2023-09-02 15:01:22--  https://www.codewithharry.com/img/gears/tvs.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 127616 (125K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/tvs.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 124.62K  --.-KB/s    in 0.1s    

2023-09-02 15:01:23 (1001 KB/s) - ‘www.codewithharry.com/img/gears/tvs.webp’ saved [127616/127616]

--2023-09-02 15:01:23--  https://www.codewithharry.com/img/gears/zeb.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 74758 (73K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/zeb.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  73.01K  --.-KB/s    in 0.06s   

2023-09-02 15:01:23 (1.21 MB/s) - ‘www.codewithharry.com/img/gears/zeb.webp’ saved [74758/74758]

--2023-09-02 15:01:23--  https://www.codewithharry.com/img/gears/wd.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 38654 (38K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/wd.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  37.75K  --.-KB/s    in 0s      

2023-09-02 15:01:23 (130 MB/s) - ‘www.codewithharry.com/img/gears/wd.webp’ saved [38654/38654]

--2023-09-02 15:01:23--  https://www.codewithharry.com/img/gears/table.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 25862 (25K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/table.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  25.26K  --.-KB/s    in 0s      

2023-09-02 15:01:23 (123 MB/s) - ‘www.codewithharry.com/img/gears/table.webp’ saved [25862/25862]

--2023-09-02 15:01:23--  https://www.codewithharry.com/img/gears/chair.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 209050 (204K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/chair.webp’

www.codewithharry.com/img/gear 100%[=================================================>] 204.15K  --.-KB/s    in 0.07s   

2023-09-02 15:01:23 (2.66 MB/s) - ‘www.codewithharry.com/img/gears/chair.webp’ saved [209050/209050]

--2023-09-02 15:01:23--  https://www.codewithharry.com/img/gears/rest.webp
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 55904 (55K) [image/webp]
Saving to: ‘www.codewithharry.com/img/gears/rest.webp’

www.codewithharry.com/img/gear 100%[=================================================>]  54.59K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (107 MB/s) - ‘www.codewithharry.com/img/gears/rest.webp’ saved [55904/55904]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/3326-b6ec87ba466573a4.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/3326-b6ec87ba466573a4.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  17.58K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (76.0 MB/s) - ‘www.codewithharry.com/_next/static/chunks/3326-b6ec87ba466573a4.js’ saved [18003]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/4853-6efd321bfca4310b.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/4853-6efd321bfca4310b.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  10.32K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (50.4 MB/s) - ‘www.codewithharry.com/_next/static/chunks/4853-6efd321bfca4310b.js’ saved [10569]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/pages/work-ac2721d36cc77cf5.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/work-ac2721d36cc77cf5.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   9.72K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (85.6 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/work-ac2721d36cc77cf5.js’ saved [9951]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/css/15f7f4f00b653c3e.css
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/css]
Saving to: ‘www.codewithharry.com/_next/static/css/15f7f4f00b653c3e.css’

www.codewithharry.com/_next/st     [ <=>                                              ]   3.09K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (36.2 MB/s) - ‘www.codewithharry.com/_next/static/css/15f7f4f00b653c3e.css’ saved [3162]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/252f366e-e675deb5435855bd.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/252f366e-e675deb5435855bd.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   2.82K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (39.4 MB/s) - ‘www.codewithharry.com/_next/static/chunks/252f366e-e675deb5435855bd.js’ saved [2887]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/545f34e4-ec767841d4c695c3.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: 320 [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/545f34e4-ec767841d4c695c3.js’

www.codewithharry.com/_next/st 100%[=================================================>]     320  --.-KB/s    in 0s      

2023-09-02 15:01:24 (3.99 MB/s) - ‘www.codewithharry.com/_next/static/chunks/545f34e4-ec767841d4c695c3.js’ saved [320/320]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/926-c51457daa2b0bfaa.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/926-c51457daa2b0bfaa.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  41.89K  --.-KB/s    in 0.001s  

2023-09-02 15:01:24 (76.2 MB/s) - ‘www.codewithharry.com/_next/static/chunks/926-c51457daa2b0bfaa.js’ saved [42891]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/pages/tutorial/%5Bslug%5D-12408580163af8d0.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/tutorial/[slug]-12408580163af8d0.js’

www.codewithharry.com/_next/st     [ <=>                                              ]   8.44K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (78.6 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/tutorial/[slug]-12408580163af8d0.js’ saved [8642]

--2023-09-02 15:01:24--  https://www.codewithharry.com/_next/static/chunks/pages/blogpost/%5Bslug%5D-d49d93de10df7952.js
Reusing existing connection to www.codewithharry.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [application/javascript]
Saving to: ‘www.codewithharry.com/_next/static/chunks/pages/blogpost/[slug]-d49d93de10df7952.js’

www.codewithharry.com/_next/st     [ <=>                                              ]  39.20K  --.-KB/s    in 0s      

2023-09-02 15:01:24 (76.8 MB/s) - ‘www.codewithharry.com/_next/static/chunks/pages/blogpost/[slug]-d49d93de10df7952.js’ saved [40139]

FINISHED --2023-09-02 15:01:24--
Total wall clock time: 19s
Downloaded: 97 files, 5.5M in 2.2s (2.55 MB/s)
Converting links in www.codewithharry.com/tutorial/react-home/index.html... 53.
53-0
Converting links in www.codewithharry.com/blogpost/html-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/tutorials/index.html... 65.
65-0
Converting links in www.codewithharry.com/blogpost/cpp-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/tutorial/java/index.html... 53.
53-0
Converting links in www.codewithharry.com/blogpost/django-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/notes/index.html... 77.
77-0
Converting links in www.codewithharry.com/blogpost/c-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/blogpost/java-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/tutorial/js/index.html... 53.
53-0
Converting links in www.codewithharry.com/blogpost/flask-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/blogpost/javascript-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/blogpost/css-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/tutorial/php/index.html... 53.
53-0
Converting links in www.codewithharry.com/videos/index.html... 48.
48-0
Converting links in www.codewithharry.com/tutorial/html-home/index.html... 53.
53-0
Converting links in www.codewithharry.com/blogpost/php-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/tutorial/python/index.html... 53.
53-0
Converting links in www.codewithharry.com/tutorial/c/index.html... 53.
53-0
Converting links in www.codewithharry.com/my-gear/index.html... 71.
71-0
Converting links in www.codewithharry.com/contact/index.html... 49.
49-0
Converting links in www.codewithharry.com/tutorial/cplusplus/index.html... 53.
53-0
Converting links in www.codewithharry.com/tutorial/css-home/index.html... 53.
53-0
Converting links in www.codewithharry.com/blog/index.html... 47.
47-0
Converting links in www.codewithharry.com/blogpost/mysql-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/index.html... 51.
50-1
Converting links in www.codewithharry.com/work/index.html... 51.
51-0
Converting links in www.codewithharry.com/blogpost/python-cheatsheet/index.html... 57.
57-0
Converting links in www.codewithharry.com/_next/static/css/1787537b0a061e74.css... nothing to do.
Converting links in www.codewithharry.com/_next/static/css/15f7f4f00b653c3e.css... nothing to do.
Converting links in www.codewithharry.com/_next/static/css/470c5e8db7cdc7e9.css... nothing to do.
Converted links in 31 files in 0.04 seconds.
                                                                                                                         
┌──(root㉿haider)-[/home/haider/mirroring]
└─# ls
www.codewithharry.com
                                                                                                                         
┌──(root㉿haider)-[/home/haider/mirroring]
└─# cd www.codewithharry.com 
                                                                                                                         
┌──(root㉿haider)-[/home/haider/mirroring/www.codewithharry.com]
└─# ls
blog  blogpost  contact  img  index.html  my-gear  _next  notes  tutorial  tutorials  videos  work
