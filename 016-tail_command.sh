# it is used to show the content of the files from the bottem of the file
# it can show the content of more than one files at a time

# it shoes last 10 lines of the files by default
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
└─# tail file1.txt file2.txt
==> file1.txt <==
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

==> file2.txt <==
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



# to show the no. of lines according to us, use -n
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# tail -n 5 file1.txt file2.txt
==> file1.txt <==
eight1234567890
nine-1234567890
ten-1234567890
eleven-1234567890
twelve-1234567890

==> file2.txt <==
eight1234567890
nine-1234567890               
ten-1234567890
eleven-1234567890
twelve-1234567890
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# tail -n 9 file1.txt file2.txt
==> file1.txt <==
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890
ten-1234567890
eleven-1234567890
twelve-1234567890

==> file2.txt <==
four-1234567890
five-1234567890
six-1234567890
seven-1234567890
eight1234567890
nine-1234567890               
ten-1234567890
eleven-1234567890
twelve-1234567890



# to show some bits of the content of the file from ending, use -c
# for example
┌──(root㉿haider)-[/home/haider/my_files]
└─# tail -c 9 file1.txt file2.txt
==> file1.txt <==
34567890

==> file2.txt <==
34567890
                                                                                
┌──(root㉿haider)-[/home/haider/my_files]
└─# tail -c 4 file1.txt file2.txt
==> file1.txt <==
890

==> file2.txt <==
890



