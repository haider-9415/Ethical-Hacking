#  it is used to change the password of a user
# syntax --> passwd user_name

# to change your own password, simply enter "passwd" and change the password

# only root user can change the password of any user
# for example
┌──(haider㉿haider)-[~]
└─$ passwd hacker
passwd: You may not view or modify password information for hacker.
                                                                          
┌──(root㉿haider)-[/home/haider]
└─# passwd hacker
New password: 
Retype new password: 
passwd: password updated successfully



# the user can be passwordless using "-d"
# for example
┌──(haider㉿haider)-[~]
└─$ su hacker 
Password: 
┌──(hacker㉿haider)-[/home/haider]
└─$ whoami
hacker

┌──(hacker㉿haider)-[/home/haider]
└─$ exit
exit

┌──(root㉿haider)-[/home/haider]
└─# passwd -d hacker
passwd: password changed.

┌──(haider㉿haider)-[~]
└─$ su hacker
┌──(hacker㉿haider)-[/home/haider]
└─$ whoami
hacker




# the root can enforce a user to change his/her password using "-e"
# for example
┌──(root㉿haider)-[/home/haider]
└─# passwd -e hacker
passwd: password changed.

┌──(haider㉿haider)-[~]
└─$ su hacker
Password: 
You are required to change your password immediately (administrator enforced).
Changing password for hacker.
Current password: 
New password: 
Retype new password: 
┌──(hacker㉿haider)-[/home/haider]
└─$ whoami
hacker




# the root can fix the time in which the user can not chn=ange his/her password using "--mindays"
# for example
┌──(root㉿haider)-[/home/haider]
└─# passwd --mindays 50 hacker
passwd: password changed.

┌──(haider㉿haider)-[~]
└─$ su hacker
Password: 
┌──(hacker㉿haider)-[/home/haider]
└─$ passwd

┌──(hacker㉿haider)-[/home/haider]
└─$ passwd
Changing password for hacker.
Current password: 
You must wait longer to change your password.
passwd: Authentication token manipulation error
passwd: password unchanged





# "--maxdays" is used to set expiry date of the password
# "--warndays" is used to warn the user before the expiration of his/her password



# "-S" is used to check some information about the passwrod of a user
# for example
┌──(hacker㉿haider)-[/home/haider]
└─$ passwd -S hacker
hacker P 2023-09-02 50 2000 39 0

┌──(hacker㉿haider)-[/home/haider]
└─$ passwd -S haider
passwd: You may not view or modify password information for haider.

┌──(root㉿haider)-[/home/haider]
└─# passwd -S haider          
haider P 2023-08-23 0 99999 7 -1
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# passwd -S root  
root P 2023-09-02 0 99999 7 -1


