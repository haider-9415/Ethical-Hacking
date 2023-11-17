# it is used to check the processes running in OS

# for example
┌──(root㉿haider)-[/home/haider]
└─# ps      
    PID TTY          TIME CMD
   3053 pts/1    00:00:00 sudo
   3054 pts/1    00:00:00 su
   3055 pts/1    00:00:02 zsh
   3142 pts/1    00:00:00 dbus-launch
   3563 pts/1    00:00:00 ps
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# gedit file1.txt&
[1] 3570
                                                                                     
┌──(root㉿haider)-[/home/haider]
└─# ps
    PID TTY          TIME CMD
   3053 pts/1    00:00:00 sudo
   3054 pts/1    00:00:00 su
   3055 pts/1    00:00:02 zsh
   3142 pts/1    00:00:00 dbus-launch
   3570 pts/1    00:00:00 gedit # after running "gedit", it is showing that 
   3594 pts/1    00:00:00 ps



# to check a perticular processe, use -C
# for example
┌──(root㉿haider)-[/home/haider]
└─# gedit file1.txt&
[1] 3403
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# ps -C gedit  
    PID TTY          TIME CMD
   3403 pts/1    00:00:00 gedit




# to check the running processes in a perticular user, use -U
# for example
┌──(root㉿haider)-[/home/haider]
└─# ps -U hacker
    PID TTY          TIME CMD
                                                                                
┌──(root㉿haider)-[/home/haider]
└─# ps -U haider
    PID TTY          TIME CMD
   1780 ?        00:00:01 systemd
   1781 ?        00:00:00 (sd-pam)
   1811 ?        00:00:00 pipewire
   1815 ?        00:00:00 wireplumber
   1817 ?        00:00:00 pipewire-pulse
   1819 ?        00:00:00 gnome-keyring-d
   1823 ?        00:00:01 dbus-daemon
   1836 ?        00:00:00 gvfsd
   1848 ?        00:00:00 gvfsd-fuse
   1876 tty2     00:00:00 gdm-x-session
   1882 tty2     00:00:13 Xorg
   1899 ?        00:00:01 tracker-miner-f
   1921 tty2     00:00:00 gnome-session-b
   1952 ?        00:00:00 gvfs-udisks2-vo
   1982 ?        00:00:00 gvfs-mtp-volume
   1996 ?        00:00:00 gvfs-afc-volume
   2013 ?        00:00:00 gvfs-goa-volume
   2029 ?        00:00:00 goa-daemon
   2037 ?        00:00:00 ssh-agent
   2059 ?        00:00:00 goa-identity-se
   2067 ?        00:00:00 gvfs-gphoto2-vo
   2078 ?        00:00:00 at-spi-bus-laun
   2085 ?        00:00:00 dbus-daemon
   2092 ?        00:00:00 gcr-ssh-agent
   2093 ?        00:00:00 gnome-session-c
   2101 ?        00:00:00 gnome-session-b
   2128 ?        00:00:26 gnome-shell
   2143 ?        00:00:00 dconf-service
   2167 ?        00:00:00 mutter-x11-fram
   2190 ?        00:00:00 xdg-permission-
   2192 ?        00:00:00 gnome-shell-cal
   2206 ?        00:00:00 evolution-sourc
   2233 ?        00:00:00 evolution-calen
   2243 ?        00:00:00 gjs
   2262 ?        00:00:00 evolution-addre
   2283 ?        00:00:00 gvfsd-trash
   2303 ?        00:00:00 xdg-desktop-por
   2308 ?        00:00:00 xdg-document-po
   2310 ?        00:00:00 at-spi2-registr
   2323 ?        00:00:01 ibus-daemon
   2324 ?        00:00:00 gsd-a11y-settin
   2329 ?        00:00:00 fusermount3
   2330 ?        00:00:00 gsd-color
   2332 ?        00:00:00 gsd-datetime
   2335 ?        00:00:00 gsd-housekeepin
   2337 ?        00:00:00 gsd-keyboard
   2338 ?        00:00:00 gsd-disk-utilit
   2339 ?        00:00:00 gsd-media-keys
   2352 ?        00:00:00 gsd-power
   2357 ?        00:00:00 gsd-print-notif
   2358 ?        00:00:00 gsd-rfkill
   2363 ?        00:00:00 gsd-screensaver
   2368 ?        00:00:00 gsd-sharing
   2369 ?        00:00:00 gsd-smartcard
   2373 ?        00:00:00 gsd-sound
   2374 ?        00:00:00 gsd-usb-protect
   2376 ?        00:00:00 gsd-wacom
   2377 ?        00:00:00 evolution-alarm
   2378 ?        00:00:02 vmtoolsd
   2379 ?        00:00:00 gsd-xsettings
   2380 ?        00:00:01 blueman-applet
   2381 ?        00:00:00 xdg-desktop-por
   2519 ?        00:00:00 ibus-memconf
   2522 ?        00:00:05 ibus-extension-
   2542 ?        00:00:00 gsd-printer
   2555 ?        00:00:00 ibus-x11
   2568 ?        00:00:00 ibus-portal
   2618 ?        00:00:00 gjs
   2718 ?        00:00:00 obexd
   2743 ?        00:00:00 ibus-engine-sim
   2779 ?        00:00:01 gjs
   2858 ?        00:00:00 gvfsd-metadata
   2937 ?        00:00:04 gnome-terminal-
   2966 pts/0    00:00:00 zsh
   3050 pts/0    00:00:00 sudo
   3053 pts/1    00:00:00 sudo





# to know more about those processes, use -aux
# for example
┌──(root㉿haider)-[/home/haider]
└─# ps -aux     
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.7  0.3 168216 12600 ?        Ss   11:08   0:04 /sbin/init sp
root           2  0.0  0.0      0     0 ?        S    11:08   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   11:08   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   11:08   0:00 [rcu_par_gp]
root           5  0.0  0.0      0     0 ?        I<   11:08   0:00 [slub_flushwq
root           6  0.0  0.0      0     0 ?        I<   11:08   0:00 [netns]
root           8  0.0  0.0      0     0 ?        I<   11:08   0:00 [kworker/0:0H
root          10  0.0  0.0      0     0 ?        I<   11:08   0:00 [mm_percpu_wq
root          11  0.0  0.0      0     0 ?        I    11:08   0:00 [rcu_tasks_kt
root          12  0.0  0.0      0     0 ?        I    11:08   0:00 [rcu_tasks_ru
root          13  0.0  0.0      0     0 ?        I    11:08   0:00 [rcu_tasks_tr
root          14  0.0  0.0      0     0 ?        S    11:08   0:00 [ksoftirqd/0]
root          15  0.1  0.0      0     0 ?        I    11:08   0:00 [rcu_preempt]
root          16  0.0  0.0      0     0 ?        S    11:08   0:00 [migration/0]
root          17  0.0  0.0      0     0 ?        I    11:08   0:00 [kworker/0:1-
root          18  0.0  0.0      0     0 ?        S    11:08   0:00 [cpuhp/0]
root          19  0.0  0.0      0     0 ?        S    11:08   0:00 [cpuhp/1]
root          20  0.3  0.0      0     0 ?        S    11:08   0:02 [migration/1]
root          21  0.0  0.0      0     0 ?        S    11:08   0:00 [ksoftirqd/1]
root          22  0.1  0.0      0     0 ?        I    11:08   0:01 [kworker/1:0-
root          23  0.0  0.0      0     0 ?        I<   11:08   0:00 [kworker/1:0H
root          26  0.0  0.0      0     0 ?        S    11:08   0:00 [kdevtmpfs]
root          27  0.0  0.0      0     0 ?        I<   11:08   0:00 [inet_frag_wq
root          28  0.0  0.0      0     0 ?        S    11:08   0:00 [kauditd]
root          30  0.0  0.0      0     0 ?        S    11:08   0:00 [khungtaskd]
root          31  0.0  0.0      0     0 ?        S    11:08   0:00 [oom_reaper]
root          33  0.0  0.0      0     0 ?        I<   11:08   0:00 [writeback]
root          34  0.0  0.0      0     0 ?        S    11:08   0:00 [kcompactd0]
root          35  0.0  0.0      0     0 ?        SN   11:08   0:00 [ksmd]
root          36  0.0  0.0      0     0 ?        SN   11:08   0:00 [khugepaged]
root          37  0.0  0.0      0     0 ?        I<   11:08   0:00 [kintegrityd]
root          38  0.0  0.0      0     0 ?        I<   11:08   0:00 [kblockd]
root          39  0.0  0.0      0     0 ?        I<   11:08   0:00 [blkcg_punt_b
root          40  0.1  0.0      0     0 ?        I    11:08   0:01 [kworker/1:1-
root          41  0.0  0.0      0     0 ?        I<   11:08   0:00 [tpm_dev_wq]
root          42  0.0  0.0      0     0 ?        I<   11:08   0:00 [edac-poller]
root          43  0.0  0.0      0     0 ?        I<   11:08   0:00 [devfreq_wq]
root          44  0.1  0.0      0     0 ?        I<   11:08   0:00 [kworker/1:1H
root          45  0.0  0.0      0     0 ?        S    11:08   0:00 [kswapd0]
root          52  0.0  0.0      0     0 ?        I<   11:08   0:00 [kthrotld]
root          54  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/24-pcieh
root          55  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/25-pcieh
root          56  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/26-pcieh
root          57  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/27-pcieh
root          58  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/28-pcieh
root          59  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/29-pcieh
root          60  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/30-pcieh
root          61  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/31-pcieh
root          62  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/32-pcieh
root          63  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/33-pcieh
root          64  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/34-pcieh
root          65  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/35-pcieh
root          66  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/36-pcieh
root          67  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/37-pcieh
root          68  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/38-pcieh
root          69  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/39-pcieh
root          70  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/40-pcieh
root          71  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/41-pcieh
root          72  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/42-pcieh
root          73  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/43-pcieh
root          74  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/44-pcieh
root          75  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/45-pcieh
root          76  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/46-pcieh
root          77  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/47-pcieh
root          78  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/48-pcieh
root          79  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/49-pcieh
root          80  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/50-pcieh
root          81  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/51-pcieh
root          82  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/52-pcieh
root          83  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/53-pcieh
root          84  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/54-pcieh
root          85  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/55-pcieh
root          86  0.0  0.0      0     0 ?        I<   11:08   0:00 [acpi_thermal
root          87  0.0  0.0      0     0 ?        S    11:08   0:00 [xenbus_probe
root          88  0.0  0.0      0     0 ?        I    11:08   0:00 [kworker/1:2-
root          89  0.0  0.0      0     0 ?        I<   11:08   0:00 [mld]
root          90  0.0  0.0      0     0 ?        I<   11:08   0:00 [ipv6_addrcon
root          95  0.0  0.0      0     0 ?        I<   11:08   0:00 [kstrp]
root         100  0.0  0.0      0     0 ?        I<   11:08   0:00 [zswap-shrink
root         101  0.0  0.0      0     0 ?        I<   11:08   0:00 [kworker/u257
root         150  0.1  0.0      0     0 ?        I<   11:08   0:00 [kworker/0:1H
root         172  0.0  0.0      0     0 ?        I<   11:08   0:00 [mpt_poll_0]
root         173  0.0  0.0      0     0 ?        I<   11:08   0:00 [mpt/0]
root         174  0.0  0.0      0     0 ?        I<   11:08   0:00 [ata_sff]
root         175  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_0]
root         176  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_0]
root         177  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/16-vmwgf
root         178  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_1]
root         179  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_1]
root         180  0.0  0.0      0     0 ?        I<   11:08   0:00 [cryptd]
root         185  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc0]
root         190  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc1]
root         191  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc2]
root         193  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc3]
root         198  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc4]
root         199  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc5]
root         201  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc6]
root         202  0.0  0.0      0     0 ?        S    11:08   0:00 [card0-crtc7]
root         209  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_2]
root         210  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_2]
root         211  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_3]
root         212  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_4]
root         221  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_3]
root         223  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_4]
root         231  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_5]
root         232  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_5]
root         233  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_6]
root         234  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_6]
root         235  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_7]
root         236  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_7]
root         237  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_8]
root         239  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_8]
root         240  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_9]
root         241  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_9]
root         243  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_10]
root         245  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_10]
root         248  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_11]
root         249  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_11]
root         250  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_12]
root         251  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_12]
root         253  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_13]
root         254  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_13]
root         257  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_14]
root         259  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_14]
root         262  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_15]
root         264  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_15]
root         265  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_16]
root         266  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_16]
root         267  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_17]
root         268  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_17]
root         269  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_18]
root         270  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_18]
root         271  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_19]
root         272  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_19]
root         273  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_20]
root         274  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_20]
root         275  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_21]
root         276  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_21]
root         277  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_22]
root         278  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_22]
root         279  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_23]
root         280  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_23]
root         281  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_24]
root         282  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_24]
root         283  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_25]
root         284  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_25]
root         285  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_26]
root         286  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_26]
root         288  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_27]
root         289  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_27]
root         290  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_28]
root         291  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_28]
root         292  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_29]
root         293  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_29]
root         294  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_30]
root         295  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_30]
root         296  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_31]
root         297  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_31]
root         298  0.0  0.0      0     0 ?        S    11:08   0:00 [scsi_eh_32]
root         299  0.0  0.0      0     0 ?        I<   11:08   0:00 [scsi_tmf_32]
root         324  0.0  0.0      0     0 ?        I    11:08   0:00 [kworker/u256
root         326  0.0  0.0      0     0 ?        I    11:08   0:00 [kworker/u256
root         404  0.0  0.0      0     0 ?        S    11:08   0:00 [jbd2/sda1-8]
root         405  0.0  0.0      0     0 ?        I<   11:08   0:00 [ext4-rsv-con
root         459  0.3  1.1  83000 45252 ?        Ss   11:08   0:02 /lib/systemd/
root         465  0.0  0.0      0     0 ?        I    11:08   0:00 [kworker/0:3-
root         476  0.0  0.0 152264   252 ?        Ssl  11:08   0:00 vmware-vmbloc
root         485  0.2  0.1  27396  7548 ?        Ss   11:08   0:01 /lib/systemd/
root         587  0.0  0.1   8264  7504 ?        Ss   11:08   0:00 /usr/sbin/hav
systemd+     596  0.0  0.1  90308  7032 ?        Ssl  11:08   0:00 /lib/systemd/
root         602  0.4  0.3 241096 12684 ?        Ssl  11:08   0:02 /usr/bin/vmto
root         608  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/57-vmw_v
root         609  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/58-vmw_v
root         611  0.0  0.0      0     0 ?        S    11:08   0:00 [irq/59-vmw_v
root         625  0.0  0.0      0     0 ?        I<   11:08   0:00 [rpciod]
root         626  0.0  0.0      0     0 ?        I<   11:08   0:00 [xprtiod]
root         677  0.0  0.2 310844  9484 ?        Ssl  11:08   0:00 /usr/libexec/
root         687  0.0  0.0   6620  2712 ?        Ss   11:08   0:00 /usr/sbin/cro
message+     694  0.2  0.1  11660  6516 ?        Ss   11:08   0:01 /usr/bin/dbus
polkitd      706  0.4  0.3 384496 12604 ?        Ssl  11:08   0:02 /usr/lib/polk
root         709  0.0  0.2  17196  8048 ?        Ss   11:08   0:00 /lib/systemd/
root         784  0.3  0.6 332836 23944 ?        Ssl  11:08   0:02 /usr/sbin/Net
root         785  0.0  0.0      0     0 ?        I<   11:08   0:00 [kworker/u257
root         822  0.0  0.3 391120 14080 ?        Ssl  11:08   0:00 /usr/sbin/Mod
root         942  0.0  0.2 314124 11116 ?        Ssl  11:08   0:00 /usr/sbin/gdm
root        1039  0.2  0.0      0     0 ?        I    11:08   0:01 [kworker/1:4-
rtkit       1140  0.0  0.0  22712  1468 ?        SNsl 11:08   0:00 /usr/libexec/
root        1262  0.0  0.3 468596 14892 ?        Ssl  11:09   0:00 /usr/libexec/
root        1329  0.0  0.2 307520 10572 ?        Ssl  11:09   0:00 /usr/libexec/
root        1393  0.0  0.2 310840  9292 ?        Ssl  11:09   0:00 /usr/libexec/
root        1420  0.0  0.1  16520  5872 ?        Ss   11:09   0:00 /sbin/wpa_sup
colord      1427  0.0  0.4 316384 17348 ?        Ssl  11:09   0:00 /usr/libexec/
root        1765  0.0  0.3 239172 13392 ?        Sl   11:09   0:00 gdm-session-w
haider      1780  0.1  0.2  20152 11780 ?        Ss   11:10   0:01 /lib/systemd/
haider      1781  0.0  0.0 169328  3556 ?        S    11:10   0:00 (sd-pam)
haider      1811  0.0  0.2  44672 11716 ?        S<sl 11:10   0:00 /usr/bin/pipe
haider      1815  0.0  0.8 481488 34392 ?        S<sl 11:10   0:00 /usr/bin/wire
haider      1817  0.0  0.2  27212  9340 ?        S<sl 11:10   0:00 /usr/bin/pipe
haider      1819  0.0  0.3 314108 11932 ?        SLsl 11:10   0:00 /usr/bin/gnom
haider      1823  0.1  0.1  10352  5948 ?        Ss   11:10   0:01 /usr/bin/dbus
haider      1836  0.0  0.2 311788 11844 ?        Ssl  11:10   0:00 /usr/libexec/
haider      1848  0.0  0.2 457220  8616 ?        Sl   11:10   0:00 /usr/libexec/
haider      1876  0.0  0.2 236688  8332 tty2     Ssl+ 11:10   0:00 /usr/libexec/
haider      1882  2.5  2.3 392228 92536 tty2     Sl+  11:10   0:14 /usr/lib/xorg
haider      1899  0.2  1.7 706848 71268 ?        SNsl 11:10   0:01 /usr/libexec/
haider      1921  0.0  0.4 371672 18084 tty2     Sl+  11:10   0:00 /usr/libexec/
haider      1952  0.0  0.3 425508 13420 ?        Ssl  11:10   0:00 /usr/libexec/
haider      1982  0.0  0.1 307228  7672 ?        Ssl  11:10   0:00 /usr/libexec/
haider      1996  0.0  0.2 386272 11136 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2013  0.0  0.2 307272 10428 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2029  0.0  1.0 658308 42448 ?        Sl   11:10   0:00 /usr/libexec/
haider      2037  0.0  0.0   7908   840 ?        Ss   11:10   0:00 /usr/bin/ssh-
haider      2059  0.0  0.3 386724 12964 ?        Sl   11:10   0:00 /usr/libexec/
haider      2067  0.0  0.2 308184  9976 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2078  0.0  0.2 385084  9588 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2085  0.0  0.1   9136  4800 ?        S    11:10   0:00 /usr/bin/dbus
haider      2092  0.0  0.1 162672  5764 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2093  0.0  0.1  89004  7224 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2101  0.0  0.5 732960 21832 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2128  5.0  6.0 3698704 240420 ?      Ssl  11:10   0:27 /usr/bin/gnom
haider      2143  0.0  0.1 230344  5520 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2167  0.1  2.2 651368 89208 ?        Sl   11:10   0:00 /usr/libexec/
haider      2190  0.0  0.1 310476  7688 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2192  0.0  0.4 654812 18612 ?        Sl   11:10   0:00 /usr/libexec/
haider      2206  0.0  1.1 592408 46668 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2233  0.0  0.7 888280 31576 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2243  0.0  0.7 2866760 30840 ?       Sl   11:10   0:00 /usr/bin/gjs 
haider      2262  0.0  0.8 748848 33392 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2283  0.0  0.2 533224 10324 ?        Sl   11:10   0:00 /usr/libexec/
haider      2303  0.0  0.4 621544 17836 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2308  0.0  0.2 607980  9200 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2310  0.0  0.2 238276 10588 ?        Sl   11:10   0:00 /usr/libexec/
haider      2323  0.2  0.3 312460 13740 ?        Ssl  11:10   0:01 /usr/bin/ibus
haider      2324  0.0  0.2 381052  8404 ?        Ssl  11:10   0:00 /usr/libexec/
root        2329  0.0  0.0   2484   968 ?        Ss   11:10   0:00 fusermount3 -
haider      2330  0.0  0.7 416572 30936 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2332  0.0  0.3 429244 13448 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2335  0.0  0.2 456488 11548 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2337  0.0  0.7 489256 30272 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2338  0.0  0.1 305588  6264 ?        Sl   11:10   0:00 /usr/libexec/
haider      2339  0.0  0.8 876064 33052 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2352  0.0  0.7 526980 31320 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2357  0.0  0.3 395244 12676 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2358  0.0  0.2 528496  8520 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2363  0.0  0.1 307056  6952 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2368  0.0  0.2 537492 11912 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2369  0.0  0.3 385732 12112 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2373  0.0  0.2 393072 11212 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2374  0.0  0.2 529592  8848 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2376  0.0  0.7 415832 28524 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2377  0.1  1.6 823196 67524 ?        Sl   11:10   0:00 /usr/libexec/
haider      2378  0.5  1.1 364720 43732 ?        Sl   11:10   0:02 /usr/bin/vmto
haider      2379  0.0  0.8 416824 32084 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2380  0.2  1.3 451216 55104 ?        Sl   11:10   0:01 /usr/bin/pyth
haider      2381  0.0  0.7 417232 30168 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2519  0.0  0.1 234148  6044 ?        Sl   11:10   0:00 /usr/libexec/
haider      2522  1.0  0.8 348224 33804 ?        Sl   11:10   0:05 /usr/libexec/
haider      2542  0.0  0.4 416088 16336 ?        Sl   11:10   0:00 /usr/libexec/
haider      2555  0.0  0.7 268276 28340 ?        Sl   11:10   0:00 /usr/libexec/
haider      2568  0.0  0.2 307948  8240 ?        Sl   11:10   0:00 /usr/libexec/
haider      2618  0.0  0.7 2670148 28704 ?       Sl   11:10   0:00 /usr/bin/gjs 
haider      2718  0.0  0.1  48564  7352 ?        Ss   11:10   0:00 /usr/libexec/
haider      2743  0.0  0.1 234288  6924 ?        Sl   11:10   0:00 /usr/libexec/
haider      2779  0.3  1.7 3101888 69568 ?       Sl   11:10   0:01 gjs /usr/shar
haider      2858  0.0  0.2 233740  8124 ?        Ssl  11:10   0:00 /usr/libexec/
haider      2937  0.9  1.4 641428 55688 ?        Ssl  11:10   0:04 /usr/libexec/
haider      2966  0.1  0.1  10088  6192 pts/0    Ss   11:10   0:00 zsh
root        3050  0.0  0.1  10080  4784 pts/0    S+   11:11   0:00 sudo su
root        3053  0.0  0.0  10080   524 pts/1    Ss   11:11   0:00 sudo su
root        3054  0.0  0.1   9040  4252 pts/1    S    11:11   0:00 su
root        3055  0.6  0.1  10308  6516 pts/1    S    11:11   0:03 zsh
root        3410  0.0  0.0  10120  1836 pts/1    SN   11:12   0:00 dbus-launch -
root        3411  0.0  0.0   9136  2552 ?        SNs  11:12   0:00 /usr/bin/dbus
root        3414  0.0  0.4 472320 18388 ?        SNl  11:12   0:00 /usr/libexec/
root        3420  0.0  0.2 533216 11192 ?        SNl  11:12   0:00 /usr/libexec/
root        3425  0.0  0.1 310476  7724 ?        SNl  11:12   0:00 /usr/libexec/
root        3432  0.0  0.0   2484   948 ?        SNs  11:12   0:00 fusermount3 -
root        3436  0.0  0.7 415900 28344 ?        SNl  11:12   0:00 /usr/libexec/
root        3443  0.0  0.2 311660 11624 ?        SNl  11:12   0:00 /usr/libexec/
root        3449  0.0  0.2 457220  8584 ?        SNl  11:12   0:00 /usr/libexec/
root        3463  0.0  0.2 314052 11452 ?        SNl  11:12   0:00 /usr/bin/gnom
root        3482  0.0  0.1 230212  4516 ?        SNl  11:12   0:00 /usr/libexec/
root        3618  0.0  0.0      0     0 ?        I    11:17   0:00 [kworker/0:0-
root        3653  500  0.1  12576  5268 pts/1    R+   11:19   0:00 ps -aux
