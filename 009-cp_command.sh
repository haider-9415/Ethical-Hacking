# it is mainly used to copy a file from one place to another
# for example

# before copying
┌──(root㉿haider)-[/home/haider]
└─# cd Downloads 
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls

┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp file1.txt /home/haider/Downloads

# after copying
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt



# to copy the content of filx into filey --> cp filex filey
# if filey already exists then it will be overwritten otherwise it will be created
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file1.txt                       
this is file1.txt

                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file2.txt
this is file2.txt

                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp file1.txt file2.txt             
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file2.txt         
this is file1.txt

                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp  file1.txt file3.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file3.txt          
this is file1.txt



# -i is to ask you about overwrite the file
# we can on ovwe write a file without copying it
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt   
this is file1.txt
                        
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt
this is file1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file1.txt                                    
this is file1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file2.txt
this is file1.txt
this is second line
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp -i file2.txt /home/haider/Downloads/file1.txt
cp: overwrite '/home/haider/Downloads/file1.txt'? n

┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt
this is file1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp -i file2.txt /home/haider/Downloads/file1.txt
cp: overwrite '/home/haider/Downloads/file1.txt'? y

┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt 
this is file1.txt
this is second line
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file1.txt                                    
this is file1.txt



# to copy the files and directories of a directory into another directory --> cp -r dir1 dir2
# if dir2 does not exist then it will be created
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  folder1  test.sh

┌──(root㉿haider)-[/home/haider/Desktop/folder1]
└─# ls
dir1  dir2  file2.txt  file3.txt  file4.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# cp -r folder1 folder2

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  folder1  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Desktop/folder2]
└─# ls
dir1  dir2  file2.txt  file3.txt  file4.txt

