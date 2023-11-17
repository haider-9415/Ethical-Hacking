# it is used to ctreate the directories

# syntax
mkdir dir1 dir2 dir3 ....... dirn

# for example
┌──(root㉿haider)-[/home/haider]
└─# ls
Desktop    Downloads  Music     Public     Videos
Documents  file.txt   Pictures  Templates
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# mkdir my_files
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# ls
Desktop    Downloads  Music     Pictures  Templates
Documents  file.txt   my_files  Public    Videos


# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls                 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir folder_1 folder_2 folder_3 folder_n
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls 
folder_1  folder_2  folder_3  folder_n



# if the directory already exists then it will not creat it and inform you

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
folder_1  folder_2  folder_3  folder_n
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir folder_1                           
mkdir: cannot create directory ‘folder_1’: File exists



# on using -v, it tells which directory you have created

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir -v folders
mkdir: created directory 'folders'



# if we want to create a directory inside a directory which do not exist 
# then we use -p

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir -p  dir1/dir2/dir3
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
dir1  folder_1  folder_2  folder_3  folder_n  folders
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cd dir1 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files/dir1]
└─# ls
dir2
                                                                                
┌──(root㉿haider)-[/home/haider/my_files/dir1]
└─# cd dir2 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files/dir1/dir2]
└─# ls
dir3
                                                                                
┌──(root㉿haider)-[/home/haider/my_files/dir1/dir2]
└─# cd dir3
                                                                                
┌──(root㉿haider)-[/home/…/my_files/dir1/dir2/dir3]
└─# ls
            


# to give the permission to the directory during creating it, use -m a=r,w,x
# r for reading permission, w for writing permission and x for executing permission

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir -m a=r folder     
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -ld folder      
dr--r--r-- 2 root root 4096 Aug 26 01:15 folder


# we can give all permissions togather
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# mkdir -m a=rwx test1

┌──(root㉿haider)-[/home/haider/my_files]
└─# ls -ld test1 
drwxrwxrwx 2 root root 4096 Aug 26 01:17 test1
