# zip is used to creat a zip file

# to create a zip file in current directory --> zip zip-file_name files
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip files.zip file1.txt file2.txt file3.txt file4.txt 
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file3.txt  files.zip  test.sh
file2.txt  file4.txt  folder2

# to create a zip file into another directory --> zip path/zip-file_name files
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
folder1  test1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip /home/haider/Downloads/files.zip file1.txt file2.txt file3.txt file4.txt
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
files.zip  folder1  test1.txt




# unzip is used to extract the zipped files

# to do unzip in same directory --> unzip zip-file_name
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
files.zip  folder2  test.sh
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# unzip files.zip 
Archive:  files.zip
 extracting: file1.txt               
 extracting: file2.txt               
 extracting: file3.txt               
 extracting: file4.txt               
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file3.txt  files.zip  test.sh
file2.txt  file4.txt  folder2

# to do unzip in another directory --> unzip zip-file_name -d path
# for example
┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
files.zip  folder1  test1.txt

┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls             
file1.txt  file3.txt  files.zip  test.sh
file2.txt  file4.txt  folder2
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# unzip files.zip -d /home/haider/Downloads/extracted_files
Archive:  files.zip
 extracting: /home/haider/Downloads/extracted_files/file1.txt  
 extracting: /home/haider/Downloads/extracted_files/file2.txt  
 extracting: /home/haider/Downloads/extracted_files/file3.txt  
 extracting: /home/haider/Downloads/extracted_files/file4.txt 

┌──(root㉿haider)-[/home/haider/Downloads]
└─# ls
extracted_files  files.zip  folder1  test1.txt
                                                                     
┌──(root㉿haider)-[/home/haider/Downloads]
└─# cd extracted_files 
                                                                     
┌──(root㉿haider)-[/home/haider/Downloads/extracted_files]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt



# to remove extracting messages on doing unzip file, ise -q
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
files.zip  folder2  test.sh
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# unzip -q  files.zip                                      
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file3.txt  files.zip  test.sh
file2.txt  file4.txt  folder2



# to know about zipped files without extracting them, use -l
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
files.zip  folder2  test.sh
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# unzip -l files.zip
Archive:  files.zip
  Length      Date    Time    Name
---------  ---------- -----   ----
        0  2023-08-28 01:31   file1.txt
        0  2023-08-28 01:31   file2.txt
       19  2023-08-28 01:31   file3.txt
        0  2023-08-28 01:31   file4.txt
---------                     -------
       19                     4 files
                                                                     
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
files.zip  folder2  test.sh



# to delete the files converting into zip files, use -m
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip zip_folder.zip file1.txt file2.txt file3.txt file4.txt 
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh  zip_folder.zip
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip -m files.zip file1.txt file2.txt file3.txt file4.txt
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
files.zip  folder2  test.sh  zip_folder.zip



# to encrypt the zipped files, use -e
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip -e dir.zip file1.txt file2.txt file3.txt file4.txt  
Enter password: 
Verify password: 
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
dir.zip  file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh



# to unzip the encryptd zip folder, we have to enter the password
# for example
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# zip -e -m dir.zip file1.txt file2.txt file3.txt file4.txt
Enter password: 
Verify password: 
  adding: file1.txt (stored 0%)
  adding: file2.txt (stored 0%)
  adding: file3.txt (stored 0%)
  adding: file4.txt (stored 0%)
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
dir.zip  folder2  test.sh
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# unzip dir.zip 
Archive:  dir.zip
[dir.zip] file1.txt password: 
 extracting: file1.txt               
 extracting: file2.txt               
 extracting: file3.txt               
 extracting: file4.txt               
                                                                                
┌──(root㉿haider)-[/home/haider/Desktop]
└─# ls
dir.zip  file1.txt  file2.txt  file3.txt  file4.txt  folder2  test.sh
