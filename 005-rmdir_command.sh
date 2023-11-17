# it is used to remove directories

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
dir1  folder
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# rmdir folder                             
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
dir1



# when a directory is not empty then it does not remove it
# to remove non empty directory, use -p

# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
dir1
                                                                                
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

┌──(root㉿haider)-[/home/…/my_files/dir1/dir2/dir3]
└─# cd ../../..
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
dir1
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# rmdir -p dir1/dir2/dir3
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
       