# it is used to give access of files to the group users

# for example
┌──(root㉿haider)-[/home/haider]
└─# groupadd hackers       
      
┌──(root㉿haider)-[/home/haider]
└─# usermod -a -G hackers hacker1    
                                                                                                                                                
┌──(root㉿haider)-[/home/haider]
└─# usermod -a -G hackers hacker3
                          
┌──(root㉿haider)-[/home]
└─# cat > file.txt  
this line is written by root
^C
                                                                                     
┌──(root㉿haider)-[/home]
└─# ls -l file.txt 
-rw-r--r-- 1 root root 29 Sep  4 16:54 file.txt
                                                                                     
┌──(root㉿haider)-[/home]
└─# chmod g+wx,o-r file.txt
                                                                                     
┌──(root㉿haider)-[/home]
└─# ls -l file.txt
-rw-rwx--- 1 root root 29 Sep  4 16:54 file.txt

┌──(hacker1㉿haider)-[/home]
└─$ cat >> file.txt 
bash: file.txt: Permission denied

┌──(hacker3㉿haider)-[/home]
└─$ cat >> file.txt 
bash: file.txt: Permission denied

┌──(root㉿haider)-[/home]
└─# chgrp hackers file.txt
                                                                         
┌──(root㉿haider)-[/home]
└─# ls -l file.txt
-rw-rwx--- 1 root hackers 29 Sep  4 16:54 file.txt
                          
┌──(hacker1㉿haider)-[/home]
└─$ cat >> file.txt 
this line is written by hacker1
^C

┌──(hacker3㉿haider)-[/home]
└─$ cat >> file.txt 
this line is written by hacker3
^C

┌──(root㉿haider)-[/home]
└─# cat file.txt          
this line is written by root
this line is written by hacker1
this line is written by hacker3

┌──(hacker1㉿haider)-[/home]
└─$ cat file.txt 
this line is written by root
this line is written by hacker1
this line is written by hacker3

┌──(hacker3㉿haider)-[/home]
└─$ cat file.txt 
this line is written by root
this line is written by hacker1
this line is written by hacker3
