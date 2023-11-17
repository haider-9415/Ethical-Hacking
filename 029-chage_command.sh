# it is used to know some information about a user
# for example
┌──(root㉿haider)-[/home/haider]
└─# chage -l  hacker
Last password change					: Sep 02, 2023
Password expires					: never
Password inactive					: never
Account expires						: never
Minimum number of days between password change		: 0
Maximum number of days between password change		: 99999
Number of days of warning before password expires	: 7



# we can change "Maximum number of days between password change", using -M
# for example
┌──(root㉿haider)-[/home/haider]
└─# chage -M 1000 hacker
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# chage -l  hacker    
Last password change					: Sep 02, 2023
Password expires					: May 29, 2026
Password inactive					: never
Account expires						: never
Minimum number of days between password change		: 0
Maximum number of days between password change		: 1000
Number of days of warning before password expires	: 7



# we can change "Minimum number of days between password change" using -m
# for example
┌──(root㉿haider)-[/home/haider]
└─# chage -m 50 hacker
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# chage -l  hacker  
Last password change					: Sep 02, 2023
Password expires					: May 29, 2026
Password inactive					: never
Account expires						: never
Minimum number of days between password change		: 50
Maximum number of days between password change		: 1000
Number of days of warning before password expires	: 7




# we can change the "Account expires" using -E
# for example
┌──(root㉿haider)-[/home/haider]
└─# chage -E 2023-5-9 hacker
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# chage -l  hacker        
Last password change					: Sep 02, 2023
Password expires					: May 29, 2026
Password inactive					: never
Account expires						: May 09, 2023
Minimum number of days between password change		: 50
Maximum number of days between password change		: 1000
Number of days of warning before password expires	: 7



# there are many options to use
┌──(root㉿haider)-[/home/haider]
└─# chage           
Usage: chage [options] LOGIN

Options:
  -d, --lastday LAST_DAY        set date of last password change to LAST_DAY
  -E, --expiredate EXPIRE_DATE  set account expiration date to EXPIRE_DATE
  -h, --help                    display this help message and exit
  -i, --iso8601                 use YYYY-MM-DD when printing dates
  -I, --inactive INACTIVE       set password inactive after expiration
                                to INACTIVE
  -l, --list                    show account aging information
  -m, --mindays MIN_DAYS        set minimum number of days before password
                                change to MIN_DAYS
  -M, --maxdays MAX_DAYS        set maximum number of days before password
                                change to MAX_DAYS
  -R, --root CHROOT_DIR         directory to chroot into
  -W, --warndays WARN_DAYS      set expiration warning days to WARN_DAYS





# we can use it as the folloewing                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# chage hacker    
Changing the aging information for hacker
Enter the new value, or press ENTER for the default

	Minimum Password Age [50]: 100
	Maximum Password Age [1000]: 2000
	Last Password Change (YYYY-MM-DD) [2023-09-02]: 1999-12-31
	Password Expiration Warning [7]: 39
	Password Inactive [-1]: 0
	Account Expiration Date (YYYY-MM-DD) [2023-05-09]: 2023-10-23
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# chage -l hacker 
Last password change					: Dec 31, 1999
Password expires					: Jun 22, 2005
Password inactive					: Jun 22, 2005
Account expires						: Oct 23, 2023
Minimum number of days between password change		: 100
Maximum number of days between password change		: 2000
Number of days of warning before password expires	: 39
