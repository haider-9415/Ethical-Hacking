# it is used to give access of files or folders to the other users

# for example
┌─[root@parrot]─[/home]
└──╼ #cat > chown_com.txt
this line is added by the root

┌─[✗]─[root@parrot]─[/home]
└──╼ #cat chown_com.txt 
this line is added by the root

┌─[root@parrot]─[/home]
└──╼ #ls -l
total 4
-rw-r--r-- 1 root   root    31 Sep  4 17:43 chown_com.txt
drwxr-xr-x 1 hacker hacker 186 Sep  4 17:34 hacker
drwxr-xr-x 1 haider haider 414 Sep  4 17:32 haider

┌─[hacker@parrot]─[/home]
└──╼ $ls -l
total 4
-rw-r--r-- 1 root   root    31 Sep  4 17:43 chown_com.txt
drwxr-xr-x 1 hacker hacker 186 Sep  4 17:34 hacker
drwxr-xr-x 1 haider haider 414 Sep  4 17:32 haider

┌─[hacker@parrot]─[/home]
└──╼ $cat chown_com.txt 
this line is added by the root

┌─[hacker@parrot]─[/home]
└──╼ $cat >> chown_com.txt 
bash: chown_com.txt: Permission denied

┌─[root@parrot]─[/home]
└──╼ #chown hacker chown_com.txt

┌─[root@parrot]─[/home]
└──╼ #ls -l
total 4
-rw-r--r-- 1 hacker root    31 Sep  4 17:43 chown_com.txt
drwxr-xr-x 1 hacker hacker 186 Sep  4 17:34 hacker
drwxr-xr-x 1 haider haider 414 Sep  4 17:32 haider

┌─[✗]─[hacker@parrot]─[/home]
└──╼ $ls -l
total 4
-rw-r--r-- 1 hacker root    31 Sep  4 17:43 chown_com.txt
drwxr-xr-x 1 hacker hacker 186 Sep  4 17:34 hacker
drwxr-xr-x 1 haider haider 414 Sep  4 17:32 haider

┌─[hacker@parrot]─[/home]
└──╼ $cat >> chown_com.txt 
this line is added by hacker

┌─[✗]─[hacker@parrot]─[/home]
└──╼ $cat chown_com.txt 
this line is added by the root
this line is added by hacker

┌─[root@parrot]─[/home]
└──╼ #cat chown_com.txt 
this line is added by the root
this line is added by hacker




# we can use -v to see that who has the user the access of the file now
# for example
┌─[✗]─[root@parrot]─[/home]
└──╼ #chown -v hacker chown_com.txt 
ownership of 'chown_com.txt' retained as hacker

┌─[root@parrot]─[/home]
└──╼ #chown -v root chown_com.txt 
changed ownership of 'chown_com.txt' from hacker to root
