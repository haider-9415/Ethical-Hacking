# it is used to download photos os files from browser in your pc
# syntax ---> wget options file_address

# for example
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget https://images5.alphacoders.com/523/523395.jpg
--2023-09-01 19:41:37--  https://images5.alphacoders.com/523/523395.jpg
Resolving images5.alphacoders.com (images5.alphacoders.com)... 172.67.3.36, 104.20.15.194, 104.20.14.194, ...
Connecting to images5.alphacoders.com (images5.alphacoders.com)|172.67.3.36|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 604611 (590K) [image/jpeg]
Saving to: ‘523395.jpg’

523395.jpg               100%[==================================>] 590.44K  --.-KB/s    in 0.1s    

2023-09-01 19:41:38 (4.31 MB/s) - ‘523395.jpg’ saved [604611/604611]

                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
523395.jpg



# to download with new name, use -O
# for exmaple
──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
523395.jpg
                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget -O silver https://images4.alphacoders.com/300/30096.jpg
--2023-09-01 19:45:25--  https://images4.alphacoders.com/300/30096.jpg
Resolving images4.alphacoders.com (images4.alphacoders.com)... 172.67.3.36, 104.20.14.194, 104.20.15.194, ...
Connecting to images4.alphacoders.com (images4.alphacoders.com)|172.67.3.36|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 198788 (194K) [image/jpeg]
Saving to: ‘silver’

silver                   100%[==================================>] 194.13K  --.-KB/s    in 0.04s   

2023-09-01 19:45:25 (4.34 MB/s) - ‘silver’ saved [198788/198788]

                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
523395.jpg  silver



# to download the photo or file in a perticular directory, use -P & path of the directory
# for example
┌──(root㉿haider)-[/home/haider/Desktop/folder1]
└─# ls

┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget -P /home/haider/Desktop/folder1 https://images2.alphacoders.com/820/82012.jpg 
--2023-09-01 19:55:03--  https://images2.alphacoders.com/820/82012.jpg
Resolving images2.alphacoders.com (images2.alphacoders.com)... 172.67.3.36, 104.20.15.194, 104.20.14.194, ...
Connecting to images2.alphacoders.com (images2.alphacoders.com)|172.67.3.36|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 723842 (707K) [image/jpeg]
Saving to: ‘/home/haider/Desktop/folder1/82012.jpg’

82012.jpg                100%[==================================>] 706.88K  1.08MB/s    in 0.6s    

2023-09-01 19:55:04 (1.08 MB/s) - ‘/home/haider/Desktop/folder1/82012.jpg’ saved [723842/723842]

┌──(root㉿haider)-[/home/haider/Desktop/folder1]
└─# ls
82012.jpg



# to set the limit of data in which the file is download, use --limit-rate=
# for example
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget --limit-rate=50k -O red https://images.alphacoders.com/424/thumbbig-42463.webp 
--2023-09-01 20:09:28--  https://images.alphacoders.com/424/thumbbig-42463.webp
Resolving images.alphacoders.com (images.alphacoders.com)... 172.67.3.36, 104.20.15.194, 104.20.14.194, ...
Connecting to images.alphacoders.com (images.alphacoders.com)|172.67.3.36|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 13806 (13K) [image/webp]
Saving to: ‘red’

red                      100%[==================================>]  13.48K  59.1KB/s    in 0.2s    

2023-09-01 20:09:29 (59.1 KB/s) - ‘red’ saved [13806/13806]

                                                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
red



# to doenload the fle in the background, use -b
# for example
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget -b https://tldp.org/LDP/intro-linux/intro-linux.pdf
Continuing in background, pid 5171.
Output will be written to ‘wget-log’.
                                                                    
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# tail -f wget-log
  1250K .......... .......... .......... .......... .......... 83% 3.36M 0s
  1300K .......... .......... .......... .......... .......... 86% 3.31M 0s
  1350K .......... .......... .......... .......... .......... 89% 3.07M 0s
  1400K .......... .......... .......... .......... .......... 92% 4.81M 0s
  1450K .......... .......... .......... .......... .......... 95% 3.77M 0s
  1500K .......... .......... .......... .......... .......... 99% 4.36M 0s
  1550K .......... ..                                         100% 2.67M=2.0s

2023-09-01 20:23:44 (793 KB/s) - ‘intro-linux.pdf’ saved [1600364/1600364]




# to download multiple files
# create a file and store all links in that file and use -i
# for example
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# cat > links.txt
https://web.njit.edu/~alexg/courses/cs332/OLD/F2020/hand3f20/Linux-Tutorial.pdf
https://www.bu.edu/tech/files/2018/05/2018-Summer-Tutorial-Intro-to-Linux.pdf
https://images7.alphacoders.com/511/511221.jpg
^C
                                                                                     
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
links.txt
                                                                                     
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# wget -i links.txt
--2023-09-01 20:31:23--  https://web.njit.edu/~alexg/courses/cs332/OLD/F2020/hand3f20/Linux-Tutorial.pdf
Resolving web.njit.edu (web.njit.edu)... 128.235.208.46
Connecting to web.njit.edu (web.njit.edu)|128.235.208.46|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 842174 (822K) [application/pdf]
Saving to: ‘Linux-Tutorial.pdf’

Linux-Tutorial.pdf    100%[======================>] 822.44K   550KB/s    in 1.5s    

2023-09-01 20:31:26 (550 KB/s) - ‘Linux-Tutorial.pdf’ saved [842174/842174]

--2023-09-01 20:31:26--  https://www.bu.edu/tech/files/2018/05/2018-Summer-Tutorial-Intro-to-Linux.pdf
Resolving www.bu.edu (www.bu.edu)... 52.84.90.10, 52.84.90.122, 52.84.90.128, ...
Connecting to www.bu.edu (www.bu.edu)|52.84.90.10|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2172321 (2.1M) [application/pdf]
Saving to: ‘2018-Summer-Tutorial-Intro-to-Linux.pdf’

2018-Summer-Tutorial- 100%[======================>]   2.07M  2.19MB/s    in 0.9s    

2023-09-01 20:31:28 (2.19 MB/s) - ‘2018-Summer-Tutorial-Intro-to-Linux.pdf’ saved [2172321/2172321]

--2023-09-01 20:31:28--  https://images7.alphacoders.com/511/511221.jpg
Resolving images7.alphacoders.com (images7.alphacoders.com)... 104.20.14.194, 104.20.15.194, 172.67.3.36, ...
Connecting to images7.alphacoders.com (images7.alphacoders.com)|104.20.14.194|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 418908 (409K) [image/jpeg]
Saving to: ‘511221.jpg’

511221.jpg            100%[======================>] 409.09K  --.-KB/s    in 0.1s    

2023-09-01 20:31:28 (2.78 MB/s) - ‘511221.jpg’ saved [418908/418908]

FINISHED --2023-09-01 20:31:28--
Total wall clock time: 5.2s
Downloaded: 3 files, 3.3M in 2.6s (1.27 MB/s)
                                                                                     
┌──(root㉿haider)-[/home/haider/Desktop/wget_command]
└─# ls
2018-Summer-Tutorial-Intro-to-Linux.pdf  511221.jpg  links.txt  Linux-Tutorial.pdf



