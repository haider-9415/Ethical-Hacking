# this is used to give permissions of reading, writing and executing to a file or directory
# the formate of the permissions is "-rwxrwxrwx" for files and "drwxrwxrwx" for directory
# first "rwx" is for user, second "rwx" is for group and third "rwx" is for other users
# r --> reading, w --> writing, x --> executing

# to give the permission, use "+" sign and to take back the premission, use "-" sign
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l
total 0
-rw-r--r-- 1 root root 0 Aug 29 11:20 file1.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod +x file1.txt       
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -ld file1.txt 
-rwxr-xr-x 1 root root 0 Aug 29 11:20 file1.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod -x file1.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -ld file1.txt
-rw-r--r-- 1 root root 0 Aug 29 11:20 file1.txt



# we can use "rwx" togather as -rwx
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt          
-rwxr-xr-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod -rwx file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
---------- 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod +rwx file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rwxr-xr-x 1 root root 0 Aug 29 11:24 file2.txt



# to give a permission to the user, use "u=", but the existing permssions are removed
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rwxr-xr-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod u=w file2.txt 
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--w-r-xr-x 1 root root 0 Aug 29 11:24 file2.txt



# to give the permission to te user, use "u+" without changing existing permissions
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--w-r-xr-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod u+r file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-r-xr-x 1 root root 0 Aug 29 11:24 file2.txt



# to give the permission to the group, use "g=", but the existing permssions are removed
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-r-xr-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod g=w file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw--w-r-x 1 root root 0 Aug 29 11:24 file2.txt



# to give the permission to the group, use "g+" without changing in existing permissions
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw--w-r-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod g+rx file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-rwxr-x 1 root root 0 Aug 29 11:24 file2.txt



# to give the permission to the other user, use "o=", but the existing permssions are removed
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-rwxr-x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod o=w file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-rwx-w- 1 root root 0 Aug 29 11:24 file2.txt



# to give the permission to the other user, use "o+" without changing in existing permissions
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-rwx-w- 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod o+rx file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rw-rwxrwx 1 root root 0 Aug 29 11:24 file2.txt




# we can use numeric notations to give and take back the prmissions
# 4 --> r & 2 --> w & 1 --> x & 0 --> nothing
# formate of the numeric notation --> xyz
# in "xyz", "x" for user, "y" for group and "z" for other user
# x=4 --> reading permission for the user, x=2 --> writing permission for the user, x=1 --> executing permission for the user & x=0 --> no anu permission for the user
# similarly "y" for group and "z" for other user
# we can use x=4+2=6, x=1+2=3, x=4+1=5 or x=4+2+1=7 also and similarly "y" & "z" also

# example-1
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
---------- 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod 777 file2.txt  # here, x=4+2+1 & y=4+2+1 & z=4+2+1
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rwxrwxrwx 1 root root 0 Aug 29 11:24 file2.txt


# example-2
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
-rwxrwxrwx 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod 000 file2.txt  # here, x=0 & y=0 & z=0
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
---------- 1 root root 0 Aug 29 11:24 file2.txt


# example-3
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
---------- 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod 361 file2.txt  # here, x=2+1=3 & y=4+2=6 & z=1
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--wxrw---x 1 root root 0 Aug 29 11:24 file2.txt


# example-4
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--wxrw---x 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod 2 file2.txt  # here, x=0 & y=0 & z=2
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--------w- 1 root root 0 Aug 29 11:24 file2.txt


# example-5
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
--------w- 1 root root 0 Aug 29 11:24 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# chmod 123 file2.txt  # here, x=1 & y=2 & z=3
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls -l file2.txt
---x-w--wx 1 root root 0 Aug 29 11:24 file2.txt
