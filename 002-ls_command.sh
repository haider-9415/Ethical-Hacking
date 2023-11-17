# it shows that all files and directories in a directory

# syntax: 
ls directory_name

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls

# output
Desktop    Downloads  Music     Public     Videos
Documents  file.txt   Pictures  Templates
# the above directories are in the directory named "haider"                        



# to know more about those directories or files, e.g., their executable permissions and etc.
# we use -l

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -l

# output
total 32
drwxr-xr-x 2 haider haider 4096 Aug 25 00:56 Desktop
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Documents
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Downloads
-rw-r--r-- 1 root   root      0 Aug 25 23:30 file.txt
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Music
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Pictures
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Public
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Templates
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Videos
                                                                         


# we can use it with -h with it as "-l -h" or "-lh"

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -lh

#  output
total 32K
drwxr-xr-x 2 haider haider 4.0K Aug 25 00:56 Desktop
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Documents
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Downloads
-rw-r--r-- 1 root   root      0 Aug 25 23:30 file.txt
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Music
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Pictures
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Public
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Templates
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Videos
                                                                                


# to see the hidden directories or files, use -a

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -a 

# output
.                 .config     file.txt  Public
..                Desktop     .java     .sudo_as_admin_successful
.bash_logout      Documents   .local    Templates
.bashrc           Downloads   Music     Videos
.bashrc.original  .face       Pictures  .zsh_history
.cache            .face.icon  .profile  .zshrc
                                                                                


# we can use -a, -l and -h togather

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -al

# output
total 104
drwx------ 14 haider haider  4096 Aug 25 23:30 .
drwxr-xr-x  3 root   root    4096 Aug 23 17:27 ..
-rw-r--r--  1 haider haider   220 Aug 23 17:27 .bash_logout
-rw-r--r--  1 haider haider  5551 Aug 23 17:27 .bashrc
-rw-r--r--  1 haider haider  3526 Aug 23 17:27 .bashrc.original
drwx------  9 haider haider  4096 Aug 25 01:53 .cache
drwxr-xr-x 15 haider haider  4096 Aug 24 23:41 .config
drwxr-xr-x  2 haider haider  4096 Aug 25 00:56 Desktop
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Documents
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Downloads
-rw-r--r--  1 haider haider 11759 Aug 23 17:27 .face
lrwxrwxrwx  1 haider haider     5 Aug 23 17:27 .face.icon -> .face
-rw-r--r--  1 root   root       0 Aug 25 23:30 file.txt
drwxr-xr-x  3 haider haider  4096 Aug 23 17:27 .java
drwxr-xr-x  4 haider haider  4096 Aug 23 17:32 .local
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Music
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Pictures
-rw-r--r--  1 haider haider   807 Aug 23 17:27 .profile
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Public
-rw-r--r--  1 haider haider     0 Aug 24 23:22 .sudo_as_admin_successful
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Templates
drwxr-xr-x  2 haider haider  4096 Aug 23 17:32 Videos
-rw-------  1 haider haider     8 Aug 25 00:07 .zsh_history
-rw-r--r--  1 haider haider 10868 Aug 23 17:27 .zshrc

# for example                                                                        
┌──(root㉿haider)-[/home/haider]
└─# ls -alh

# output
total 104K
drwx------ 14 haider haider 4.0K Aug 25 23:30 .
drwxr-xr-x  3 root   root   4.0K Aug 23 17:27 ..
-rw-r--r--  1 haider haider  220 Aug 23 17:27 .bash_logout
-rw-r--r--  1 haider haider 5.5K Aug 23 17:27 .bashrc
-rw-r--r--  1 haider haider 3.5K Aug 23 17:27 .bashrc.original
drwx------  9 haider haider 4.0K Aug 25 01:53 .cache
drwxr-xr-x 15 haider haider 4.0K Aug 24 23:41 .config
drwxr-xr-x  2 haider haider 4.0K Aug 25 00:56 Desktop
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Documents
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Downloads
-rw-r--r--  1 haider haider  12K Aug 23 17:27 .face
lrwxrwxrwx  1 haider haider    5 Aug 23 17:27 .face.icon -> .face
-rw-r--r--  1 root   root      0 Aug 25 23:30 file.txt
drwxr-xr-x  3 haider haider 4.0K Aug 23 17:27 .java
drwxr-xr-x  4 haider haider 4.0K Aug 23 17:32 .local
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Music
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Pictures
-rw-r--r--  1 haider haider  807 Aug 23 17:27 .profile
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Public
-rw-r--r--  1 haider haider    0 Aug 24 23:22 .sudo_as_admin_successful
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Templates
drwxr-xr-x  2 haider haider 4.0K Aug 23 17:32 Videos
-rw-------  1 haider haider    8 Aug 25 00:07 .zsh_history
-rw-r--r--  1 haider haider  11K Aug 23 17:27 .zshrc

# for example                                                                                
┌──(root㉿haider)-[/home/haider]
└─# ls -ah 

# output
.                 .config     file.txt  Public
..                Desktop     .java     .sudo_as_admin_successful
.bash_logout      Documents   .local    Templates
.bashrc           Downloads   Music     Videos
.bashrc.original  .face       Pictures  .zsh_history
.cache            .face.icon  .profile  .zshrc
                                                                                


# to see the details of a perticular directory, use "-d directory_name/" as "-l -d" or "-ld"

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -ld Downloads/

# output
drwxr-xr-x 2 haider haider 4096 Aug 23 17:32 Downloads/



# we can use also -h with it

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls -ldh Downloads/

# output
drwxr-xr-x 2 haider haider 4.0K Aug 23 17:32 Downloads/



# to see the access time of a file, use -u

# for example 
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu
total 4
-rw-r--r-- 1 root root 0 Aug 26 11:19 file1.txt
-rw-r--r-- 1 root root 3 Aug 26 11:26 file2.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file4.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# gedit file1.txt&
[2] 3730
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# 
[2]  + done       gedit file1.txt
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -lu
total 8
-rw-r--r-- 1 root root 5 Aug 26 11:27 file1.txt # access time of this file has been changed
-rw-r--r-- 1 root root 3 Aug 26 11:26 file2.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file3.txt
-rw-r--r-- 1 root root 0 Aug 26 11:20 file4.txt
