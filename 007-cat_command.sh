# it is used formany purposes

# to creat and wirte the file, use "cat > file_name"
# press the enter to save the content
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat > file1.txt
this is first file created using cat command 

# enter ctrl+c to save and exit out

┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
file1.txt



# if the file already exists then use "cat >> file_name"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt
this is first file created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat >> file1.txt
this is second line

┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt   
this is first file created using cat command
this is second line



# to see the content of a file, use "cat file_name"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt  
this is first file created using cat command



# to append the content of file_x in file_y, use "cat file_x >> file_y"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt 
this is first file created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file2.txt
this is file2.txt created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt >> file2.txt 
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt             
this is first file created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file2.txt
this is file2.txt created using cat command
this is first file created using cat command



# to copy the content of files file1 file2 file3 ..... filen in filem during ite creation
# use cat file1 file2 file3 ..... filen > filem
# if filem already exists then use ">>" instead of ">"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
file1.txt  file2.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt
this is first file created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file2.txt
this is file2.txt created using cat command
this is first file created using cat command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt file2.txt > file3.txt 

┌──(root㉿haider)-[/home/haider/my_files]
└─# ls
file1.txt  file2.txt  file3.txt
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file3.txt                      
this is first file created using cat command
this is file2.txt created using cat command
this is first file created using cat command
                                                                                


# to see the lines with line numbers
# use "cat -n file_name"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat -n file3.txt
     1	this is first file created using cat command
     2	this is file2.txt created using cat command
     3	this is first file created using cat command



# to show the $ sign in end of lines
# use "cat -E file_name"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat -E file3.txt
this is first file created using cat command$
this is file2.txt created using cat command$
this is first file created using cat command$
$ #because the cursor is here



# to show the tab in the content as "^I",
# sue "cat -t file_name"
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file2.txt  
this is 	file2.txt created using cat command	
this is first file created 		using cat 	command
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat -t file2.txt 
this is ^Ifile2.txt created using cat command^I
this is first file created ^I^Iusing cat ^Icommand
