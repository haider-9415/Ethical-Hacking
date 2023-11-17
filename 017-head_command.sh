# it is used to show the content of the files from the top of the file
# it can show the content of more than one files at a time

# it shows first 10 line of the files by default
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file1.txt                       
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890
eleven-1234567890
twelve-1234567890
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# cat file2.txt
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890               
ten-1234567890
eleven-1234567890
twelve-1234567890

                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# head file1.txt 
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890

# we can use more than one files                                            
┌──(root㉿haider)-[/home/haider/my_files]
└─# head file1.txt file2.txt 
==> file1.txt <==
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890

==> file2.txt <==
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890               
ten-1234567890



# to show the no. of lines according to us, use -n
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# head -n 5 file1.txt file2.txt
==> file1.txt <==
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890

==> file2.txt <==
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890



# to show some bits of the content of the file from starting, use -c
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# head -c 5 file1.txt file2.txt
==> file1.txt <==
one-1
==> file2.txt <==
one-1      

┌──(root㉿haider)-[/home/haider/my_files]
└─# head -c 7 file1.txt file2.txt 
==> file1.txt <==
one-123
==> file2.txt <==
one-123   



# to show the name of the file on using it with one file, use -v
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# head  file1.txt           
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# head -v file1.txt 
==> file1.txt <==
one-123456789
two-1234567890
three-1234567890
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890

