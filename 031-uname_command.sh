# it is used to know the information about the machine, OS, hostanem of the current user, etc.

# to know the OS
┌──(root㉿haider)-[/home/haider]
└─# uname        
Linux

┌──(root㉿haider)-[/home/haider]
└─# uname -s        
Linux


# to know the version of the machine
┌──(root㉿haider)-[/home/haider]
└─# uname -r
6.1.0-kali9-amd64



# to know the hostname
┌──(root㉿haider)-[/home/haider]
└─# uname -n
HackTech



# to know the architechture of your machine
┌──(root㉿haider)-[/home/haider]
└─# uname -m
x86_64



# and many options we can use
┌──(haider㉿HackTech)-[~]
└─$ uname --help
Usage: uname [OPTION]...
Print certain system information.  With no OPTION, same as -s.

  -a, --all                print all information, in the following order,
                             except omit -p and -i if unknown:
  -s, --kernel-name        print the kernel name
  -n, --nodename           print the network node hostname
  -r, --kernel-release     print the kernel release
  -v, --kernel-version     print the kernel version
  -m, --machine            print the machine hardware name
  -p, --processor          print the processor type (non-portable)
  -i, --hardware-platform  print the hardware platform (non-portable)
  -o, --operating-system   print the operating system
      --help        display this help and exit
      --version     output version information and exit
