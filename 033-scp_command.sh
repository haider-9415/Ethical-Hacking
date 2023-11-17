# it is used to to share files from one machine to another machine
# syntax --> scp -C file_name user_name_at_connected_machine@IP_address_of_that_machine:/path_where_to_save

# now we will create a file in "kali" and send to the "parrot"
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat > remote.txt
this file has been sent from kali
^C
                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat remote.txt  
this file has been sent from kali
                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# scp -C remote.txt haider@192.168.180.143:/home/haider/Desktop
#haider@192.168.180.143's password: 
remote.txt                                                        100%   34    14.4KB/s   00:00    
                                                                                                    
# now we will see the file at parrot
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #ls
README.license  remote.txt
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #cat remote.txt 
this file has been sent from kali



# another example
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #ls
README.license  remote.txt

┌──(root㉿haider)-[~haider/Desktop]
└─# cat > file1.html
<html>
<head>
</head>
<body>
</body>
</html>
^C
                                                                                                    
┌──(root㉿haider)-[~haider/Desktop]
└─# scp -C file1.html haider@192.168.180.143:/home/haider/Desktop 
#haider@192.168.180.143's password: 
file1.html                                                        100%   45    19.7KB/s   00:00    
                
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #ls
file1.html  README.license  remote.txt
┌─[root@parrot]─[/home/haider/Desktop]
└──╼ #cat file1.html 
<html>
<head>
</head>
<body>
</body>
</html>
