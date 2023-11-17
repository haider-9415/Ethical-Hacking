# it is used to find the IP addresses of a domain

# for exaple
┌──(root㉿haider)-[/home/haider]
└─# host google.com
google.com has address 172.217.174.238
google.com has IPv6 address 2404:6800:4002:810::200e
google.com mail is handled by 10 smtp.google.com.

┌──(root㉿haider)-[/home/haider]
└─# host gogle.com    
gogle.com has address 142.250.199.132
gogle.com has IPv6 address 2404:6800:4009:82d::2004
gogle.com mail is handled by 0 .
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# host tesla.com
tesla.com has address 104.89.118.48
tesla.com has address 23.220.132.93
tesla.com has address 104.85.4.91
tesla.com has address 96.16.108.43
tesla.com has address 23.218.192.46
tesla.com mail is handled by 10 tesla-com.mail.protection.outlook.com.




# to find mail record of the domain, use "-t mx"
# for example
┌──(root㉿haider)-[/home/haider]
└─# host -t mx google.com
google.com mail is handled by 10 smtp.google.com.
                                                       
┌──(root㉿haider)-[/home/haider]
└─# host -t mx medium.com
medium.com mail is handled by 1 aspmx.l.google.com.
medium.com mail is handled by 10 aspmx2.googlemail.com.
medium.com mail is handled by 10 aspmx3.googlemail.com.
medium.com mail is handled by 5 alt1.aspmx.l.google.com.
medium.com mail is handled by 5 alt2.aspmx.l.google.com.




┌──(root㉿haider)-[/home/haider]
└─# host -t txt google.com
google.com descriptive text "globalsign-smime-dv=CDYX+XFHUw2wml6/Gb8+59BsH31KzUr6c1l2BPvqKX8="
google.com descriptive text "docusign=05958488-4752-4ef2-95eb-aa7ba8a3bd0e"
google.com descriptive text "onetrust-domain-verification=de01ed21f2fa4d8781cbc3ffb89cf4ef"
google.com descriptive text "atlassian-domain-verification=5YjTmWmjI92ewqkx2oXmBaD60Td9zWon9r6eakvHX6B77zzkFQto8PQ9QsKnbf4I"
google.com descriptive text "v=spf1 include:_spf.google.com ~all"
google.com descriptive text "facebook-domain-verification=22rm551cu4k0ab0bxsw536tlds4h95"
google.com descriptive text "apple-domain-verification=30afIBcvSuDV2PLX"
google.com descriptive text "webexdomainverification.8YX6G=6e6922db-e3e6-4a36-904e-a805c28087fa"
google.com descriptive text "docusign=1b0a6754-49b1-4db5-8540-d2c12664b289"
google.com descriptive text "google-site-verification=wD8N7i1JTNTkezJ49swvWW48f8_9xveREV4oB-0Hf5o"
google.com descriptive text "google-site-verification=TV9-DBe4R80X4v0M4U_bd_J9cpOJM0nikft0jAgjmsQ"
google.com descriptive text "MS=E4A68B9AB2BB9670BCE15412F62916164C0B20BB"
                                                                            
