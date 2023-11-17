# it is used to terminate any process

# syntax --> kill PID_of_process

# for example
┌──(root㉿haider)-[/home/haider]
└─# gedit file1.txt&
[1] 3858
                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# ps -C gedit  
    PID TTY          TIME CMD
   3858 pts/1    00:00:01 gedit
                                                                                                    
┌──(root㉿haider)-[/home/haider]
└─# kill 3858
                                                                                                    
[1]  + terminated  gedit file1.txt
┌──(root㉿haider)-[/home/haider]
└─# ps -C gedit
    PID TTY          TIME CMD
                                    




# we can use these signals with hyphen to terminate anu process
┌──(root㉿haider)-[/home/haider]
└─# kill -l 
HUP INT QUIT ILL TRAP IOT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH POLL PWR SYS

# for example
┌──(root㉿haider)-[/home/haider]
└─# cat > file1.html

┌──(haider㉿haider)-[~]
└─$ ps -C cat    
    PID TTY          TIME CMD
   4181 pts/1    00:00:00 cat

┌──(root㉿haider)-[/home/haider]
└─# kill -KILL 4181

┌──(root㉿haider)-[/home/haider]
└─# cat > file1.html
zsh: killed     cat > file1.html
