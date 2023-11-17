# it is used to creat empty files

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch file1.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
file1.txt



# we can creat multiple files at a time
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch file2.txt file3.txt file4.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls                              
file1.txt  file2.txt  file3.txt  file4.txt



# to change the access time of the existing file in cuurent time, use "-a file_name"

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu
total 8
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:26 file2.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file4.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch -a file2.txt                 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu
total 8
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:30 file2.txt  # access time of this file has been changed
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file4.txt

# but the modification time does not changed
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -l 
total 8
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:26 file2.txt # you can see the modification time is that
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file4.txt



# to change the modification time, use "-m file_name"

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -l file2.txt
-rw-r--r-- 1 root root 3 Aug 26 11:26 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch -m file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -l file2.txt
-rw-r--r-- 1 root root 3 Aug 26 11:36 file2.txt

# the access time does not time change
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu file2.txt
-rw-r--r-- 1 root root 3 Aug 26 11:30 file2.txt



# to copy the access time of file_x to the file_y, sue "-r file_x file_y"

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu file1.txt file2.txt
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:30 file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch -r file1.txt file2.txt 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu file1.txt file2.txt
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:27 file2.txt


# the modification time is also copied
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -l file2.txt file3.txt
-rw-r--r-- 1 root root 3 Aug 26 11:27 file2.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# touch -r file3.txt file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -l file2.txt file3.txt
-rw-r--r-- 1 root root 3 Aug 26 11:20 file2.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
