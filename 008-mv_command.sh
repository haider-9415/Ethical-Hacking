# it is used remove a file from one place to another
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
               
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  folder1  folder2  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv file1.txt /home/haider/Downloads        
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file2.txt  file3.txt  folder1  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt



# we can change the name of filex to the filey

# to rename in current folder --> mv filex filey
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt
this is file1.txt

                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# mv file1.txt test1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat test1.txt               
this is file1.txt

# to rename during the moving of file --> mv filex path/filey
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file2.txt  file3.txt  folder1  folder2  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file2.txt
this is file1.txt
this is second line
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv file2.txt /home/haider/Downloads/test2.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder1  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt  test2.txt



# if the file of same name already exists then it will be over written
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt                       
this is created in doenloads directory.

┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat file1.txt 
this is created in desktop directory
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv file1.txt /home/haider/Downloads/         
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder1  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
file1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat file1.txt
this is created in desktop directory


# to avoid this, we use -i, it asks first that will you overwrite the file
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat test1.txt  
this is created in Downloads directory

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder1  folder2  test1.txt  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cat test1.txt   
this is created in Desktop directory
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv -i test1.txt /home/haider/Downloads        
mv: overwrite '/home/haider/Downloads/test1.txt'? n

┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat test1.txt
this is created in Downloads directory

┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv -i test1.txt /home/haider/Downloads
mv: overwrite '/home/haider/Downloads/test1.txt'? y
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder1  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cat test1.txt
this is created in Desktop directory



# we can directory into anothor directory
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
test1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder1  folder2  test.sh
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# cd folder1
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/folder1]
└─# ls
dir1  dir2  file2.txt  file3.txt  file4.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/folder1]
└─# cd ..     
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mv folder1 /home/haider/Downloads     
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file3.txt  folder2  test.sh

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
folder1  test1.txt
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cd folder1  
                                                                    
┌──(root㉿haider)-[/home/haider/Downloads/folder1]
└─# ls
dir1  dir2  file2.txt  file3.txt  file4.txt

# we can also change the name of that directory as we do in moving files