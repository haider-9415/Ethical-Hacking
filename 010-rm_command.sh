# it is used to remove files and directory also

# to remove files --> rm file_name
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm file1.txt                              
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file2.txt  file3.txt  file4.txt  test.sh



# we can remove many file files at a time
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm file2.txt file3.txt file4.txt 
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
test.sh
           


# -i is used with it to take confirmation for deleting that file
# for YES, enter "y" and for NO, enter "n" 
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -i file1.txt file2.txt
rm: remove regular empty file 'file1.txt'? y
rm: remove regular empty file 'file2.txt'? n
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file2.txt  file3.txt  file4.txt  test.sh

# if we use -I then it will take one permission for al files
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -I file1.txt file2.txt file3.txt file4.txt
rm: remove 4 arguments? n
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -I file1.txt file2.txt file3.txt file4.txt
rm: remove 4 arguments? y
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
test.sh




# -v is to show the removed files
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# touch file1.txt file2.txt file3.txt file4.txt
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -v file1.txt file2.txt file3.txt file4.txt 
removed 'file1.txt'
removed 'file2.txt'
removed 'file3.txt'
removed 'file4.txt'




# to remove empty directories, use "-d" or "-r"
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mkdir folder1 folder2
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
folder1  folder2  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -d -v folder1 
removed directory 'folder1'
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -r -v folder2
removed directory 'folder2'



# to remove non empty directorie, use only "-r" or "-rf"
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# mkdir -p folder1/folder2/folder3
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
folder1  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -d -v folder1 
rm: cannot remove 'folder1': Directory not empty
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# rm -r -v folder1
removed directory 'folder1/folder2/folder3'
removed directory 'folder1/folder2'
removed directory 'folder1'



