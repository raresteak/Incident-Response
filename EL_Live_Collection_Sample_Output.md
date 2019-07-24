```
----------------Started collection----------------------------
Wed Jul 24 03:23:42 CDT 2019
----------------RUNNING AS------------------------------------
root
----------------HOSTNAME--------------------------------------
RHEL8-1
----------------UNAME-----------------------------------------
Linux RHEL8-1 4.18.0-32.el8.x86_64 #1 SMP Sat Oct 27 19:26:37 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
----------------KERNEL MODULES--------------------------------
Module                  Size  Used by
nf_tables_set          32768  3
nft_fib_inet           16384  1
nft_fib_ipv4           16384  1 nft_fib_inet
nft_fib_ipv6           16384  1 nft_fib_inet
nft_fib                16384  3 nft_fib_ipv6,nft_fib_ipv4,nft_fib_inet
nft_reject_inet        16384  2
nf_reject_ipv4         16384  1 nft_reject_inet
nf_reject_ipv6         16384  1 nft_reject_inet
nft_reject             16384  1 nft_reject_inet
nft_ct                 20480  7
nft_chain_nat_ipv6     16384  6
nf_conntrack_ipv6      16384  8
nf_defrag_ipv6         20480  1 nf_conntrack_ipv6
nf_nat_ipv6            16384  1 nft_chain_nat_ipv6
nft_chain_route_ipv6    16384  1
nft_chain_nat_ipv4     16384  6
nf_conntrack_ipv4      16384  8
nf_defrag_ipv4         16384  1 nf_conntrack_ipv4
nf_nat_ipv4            16384  1 nft_chain_nat_ipv4
nf_nat                 36864  2 nf_nat_ipv6,nf_nat_ipv4
nft_chain_route_ipv4    16384  1
nf_conntrack          155648  6 nf_conntrack_ipv6,nf_conntrack_ipv4,nf_nat,nft_ct,nf_nat_ipv6,nf_nat_ipv4
ip6_tables             32768  0
ip_tables              28672  0
nft_compat             20480  0
ip_set                 45056  0
nf_tables             143360  155 nft_chain_route_ipv4,nft_ct,nft_compat,nft_chain_nat_ipv6,nft_chain_nat_ipv4,nft_reject_inet,nft_fib_ipv6,nft_fib_ipv4,nf_tables_set,nft_chain_route_ipv6,nft_reject,nft_fib,nft_fib_inet
nfnetlink              16384  3 nft_compat,nf_tables,ip_set
intel_powerclamp       16384  0
crct10dif_pclmul       16384  0
crc32_pclmul           16384  0
ghash_clmulni_intel    16384  0
intel_rapl_perf        16384  0
sg                     40960  0
pcspkr                 16384  0
video                  45056  0
i2c_piix4              24576  0
backlight              16384  1 video
xfs                  1466368  2
libcrc32c              16384  3 nf_conntrack,nf_nat,xfs
sr_mod                 28672  0
sd_mod                 49152  3
cdrom                  69632  1 sr_mod
ata_generic            16384  0
ahci                   40960  2
libahci                40960  1 ahci
ata_piix               36864  0
libata                274432  4 ata_piix,libahci,ahci,ata_generic
crc32c_intel           24576  1
serio_raw              16384  0
e1000                 155648  0
dm_mirror              28672  0
dm_region_hash         20480  1 dm_mirror
dm_log                 20480  2 dm_region_hash,dm_mirror
dm_mod                151552  8 dm_log,dm_mirror
----------------RELEASE---------------------------------------
Red Hat Enterprise Linux release 8.0 Beta (Ootpa)
----------------UPTIME----------------------------------------
 03:23:42 up 2 min,  1 user,  load average: 0.23, 0.20, 0.08
---------------CRON FILES-------------------------------------
----------------MOTD------------------------------------------
*******************************************************************************
__________  ___ ______________.____     
\______   \/   |   \_   _____/|    |    
 |       _/    ~    \    __)_ |    |    
 |    |   \    Y    /        \|    |___ 
 |____|_  /\___|_  /_______  /|_______ \
        \/       \/        \/         \/

*******************************************************************************
----------------LOGGED IN USERS-------------------------------
 03:23:42 up 2 min,  1 user,  load average: 0.23, 0.20, 0.08
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
ansible  tty1     -                03:22    3.00s  0.09s  0.10s login -- ansible     
----------------LAST SUCCESSFUL LOGGED IN USERS---------------
ansible  tty1                          Wed Jul 24 03:22   still logged in
reboot   system boot  4.18.0-32.el8.x8 Wed Jul 24 03:21   still running
ansible  pts/0        10.7.1.101   Tue Mar 26 02:27 - 02:28  (00:00)
ansible  pts/0        10.7.1.101   Tue Mar 26 02:23 - 02:23  (00:00)
ansible  tty1                          Tue Mar 26 02:20 - 13:08 (2+10:48)
reboot   system boot  4.18.0-32.el8.x8 Tue Mar 26 02:18 - 13:08 (2+10:50)
ansible  tty1                          Tue Mar 26 02:17 - 02:18  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:44  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:43  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:43  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:43  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:43  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:43 - 01:43  (00:00)
ansible  pts/0        10.7.1.101   Mon Mar 25 01:42 - 01:42  (00:00)
reboot   system boot  4.18.0-32.el8.x8 Mon Mar 25 01:15 - 02:18 (1+01:02)
reboot   system boot  4.18.0-32.el8.x8 Thu Mar 21 14:25 - 14:01  (23:36)
ansible  tty1                          Thu Mar 21 12:19 - 12:21  (00:01)

wtmp begins Thu Mar 21 10:13:34 2019
----------------LAST UNSUCCESSFUL LOGIN IN USERS--------------
root     tty1                          Wed Jul 24 03:22 - 03:22  (00:00)

btmp begins Wed Jul 24 03:22:08 2019
----------------USERS-----------------------------------------
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/bin:/sbin/nologin
daemon:x:2:2:daemon:/sbin:/sbin/nologin
adm:x:3:4:adm:/var/adm:/sbin/nologin
lp:x:4:7:lp:/var/spool/lpd:/sbin/nologin
sync:x:5:0:sync:/sbin:/bin/sync
shutdown:x:6:0:shutdown:/sbin:/sbin/shutdown
halt:x:7:0:halt:/sbin:/sbin/halt
mail:x:8:12:mail:/var/spool/mail:/sbin/nologin
operator:x:11:0:operator:/root:/sbin/nologin
games:x:12:100:games:/usr/games:/sbin/nologin
ftp:x:14:50:FTP User:/var/ftp:/sbin/nologin
nobody:x:65534:65534:Kernel Overflow User:/:/sbin/nologin
dbus:x:81:81:System message bus:/:/sbin/nologin
systemd-coredump:x:999:997:systemd Core Dumper:/:/sbin/nologin
systemd-resolve:x:193:193:systemd Resolver:/:/sbin/nologin
tss:x:59:59:Account used by the trousers package to sandbox the tcsd daemon:/dev/null:/sbin/nologin
polkitd:x:998:996:User for polkitd:/:/sbin/nologin
unbound:x:997:994:Unbound DNS resolver:/etc/unbound:/sbin/nologin
libstoragemgmt:x:996:992:daemon account for libstoragemgmt:/var/run/lsm:/sbin/nologin
clevis:x:995:991:Clevis Decryption Framework unprivileged user:/var/cache/clevis:/sbin/nologin
cockpit-ws:x:994:990:User for cockpit-ws:/:/sbin/nologin
setroubleshoot:x:993:989::/var/lib/setroubleshoot:/sbin/nologin
chrony:x:992:988::/var/lib/chrony:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
dnsmasq:x:987:987:Dnsmasq DHCP and DNS server:/var/lib/dnsmasq:/sbin/nologin
tcpdump:x:72:72::/:/sbin/nologin
ansible:x:1001:1001::/home/ansible:/bin/bash
root:=REDACTED=::0:99999:7:::
bin:*:17784:0:99999:7:::
daemon:*:17784:0:99999:7:::
adm:*:17784:0:99999:7:::
lp:*:17784:0:99999:7:::
sync:*:17784:0:99999:7:::
shutdown:*:17784:0:99999:7:::
halt:*:17784:0:99999:7:::
mail:*:17784:0:99999:7:::
operator:*:17784:0:99999:7:::
games:*:17784:0:99999:7:::
ftp:*:17784:0:99999:7:::
nobody:*:17784:0:99999:7:::
dbus:!!:17976::::::
systemd-coredump:!!:17976::::::
systemd-resolve:!!:17976::::::
tss:!!:17976::::::
polkitd:!!:17976::::::
unbound:!!:17976::::::
libstoragemgmt:!!:17976::::::
clevis:!!:17976::::::
cockpit-ws:!!:17976::::::
setroubleshoot:!!:17976::::::
chrony:!!:17976::::::
sshd:!!:17976::::::
dnsmasq:!!:17976::::::
tcpdump:!!:17976::::::
ansible:=REDACTED=:17976:0:99999:7:::
----------------GROUPS----------------------------------------
root:x:0:
bin:x:1:
daemon:x:2:
sys:x:3:
adm:x:4:
tty:x:5:
disk:x:6:
lp:x:7:
mem:x:8:
kmem:x:9:
wheel:x:10:ansible
cdrom:x:11:
mail:x:12:
man:x:15:
dialout:x:18:
floppy:x:19:
games:x:20:
tape:x:33:
video:x:39:
ftp:x:50:
lock:x:54:
audio:x:63:
users:x:100:
nobody:x:65534:
dbus:x:81:
utmp:x:22:
utempter:x:35:
input:x:999:
kvm:x:36:
render:x:998:
systemd-journal:x:190:
systemd-coredump:x:997:
systemd-resolve:x:193:
tss:x:59:
polkitd:x:996:
printadmin:x:995:
unbound:x:994:
ssh_keys:x:993:
libstoragemgmt:x:992:
clevis:x:991:
cockpit-ws:x:990:
setroubleshoot:x:989:
chrony:x:988:
sshd:x:74:
slocate:x:21:
dnsmasq:x:987:
tcpdump:x:72:
ansible:x:1001:
----------------SUDO------------------------------------------
## Sudoers allows particular users to run various commands as
## the root user, without needing the root password.
##
## Examples are provided at the bottom of the file for collections
## of related commands, which can then be delegated out to particular
## users or groups.
## 
## This file must be edited with the 'visudo' command.

## Host Aliases
## Groups of machines. You may prefer to use hostnames (perhaps using 
## wildcards for entire domains) or IP addresses instead.
# Host_Alias     FILESERVERS = fs1, fs2
# Host_Alias     MAILSERVERS = smtp, smtp2

## User Aliases
## These aren't often necessary, as you can use regular groups
## (ie, from files, LDAP, NIS, etc) in this file - just use %groupname 
## rather than USERALIAS
# User_Alias ADMINS = jsmith, mikem


## Command Aliases
## These are groups of related commands...

## Networking
# Cmnd_Alias NETWORKING = /sbin/route, /sbin/ifconfig, /bin/ping, /sbin/dhclient, /usr/bin/net, /sbin/iptables, /usr/bin/rfcomm, /usr/bin/wvdial, /sbin/iwconfig, /sbin/mii-tool

## Installation and management of software
# Cmnd_Alias SOFTWARE = /bin/rpm, /usr/bin/up2date, /usr/bin/yum

## Services
# Cmnd_Alias SERVICES = /sbin/service, /sbin/chkconfig, /usr/bin/systemctl start, /usr/bin/systemctl stop, /usr/bin/systemctl reload, /usr/bin/systemctl restart, /usr/bin/systemctl status, /usr/bin/systemctl enable, /usr/bin/systemctl disable

## Updating the locate database
# Cmnd_Alias LOCATE = /usr/bin/updatedb

## Storage
# Cmnd_Alias STORAGE = /sbin/fdisk, /sbin/sfdisk, /sbin/parted, /sbin/partprobe, /bin/mount, /bin/umount

## Delegating permissions
# Cmnd_Alias DELEGATING = /usr/sbin/visudo, /bin/chown, /bin/chmod, /bin/chgrp 

## Processes
# Cmnd_Alias PROCESSES = /bin/nice, /bin/kill, /usr/bin/kill, /usr/bin/killall

## Drivers
# Cmnd_Alias DRIVERS = /sbin/modprobe

# Defaults specification

#
# Refuse to run if unable to disable echo on the tty.
#
Defaults   !visiblepw

#
# Preserving HOME has security implications since many programs
# use it when searching for configuration files. Note that HOME
# is already set when the the env_reset option is enabled, so
# this option is only effective for configurations where either
# env_reset is disabled or HOME is present in the env_keep list.
#
Defaults    always_set_home
Defaults    match_group_by_gid

# Prior to version 1.8.15, groups listed in sudoers that were not
# found in the system group database were passed to the group
# plugin, if any. Starting with 1.8.15, only groups of the form
# %:group are resolved via the group plugin by default.
# We enable always_query_group_plugin to restore old behavior.
# Disable this option for new behavior.
Defaults    always_query_group_plugin

Defaults    env_reset
Defaults    env_keep =  "COLORS DISPLAY HOSTNAME HISTSIZE KDEDIR LS_COLORS"
Defaults    env_keep += "MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"
Defaults    env_keep += "LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"
Defaults    env_keep += "LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"
Defaults    env_keep += "LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"

#
# Adding HOME to env_keep may enable a user to run unrestricted
# commands via sudo.
#
# Defaults   env_keep += "HOME"

Defaults    secure_path = /sbin:/bin:/usr/sbin:/usr/bin

## Next comes the main part: which users can run what software on 
## which machines (the sudoers file can be shared between multiple
## systems).
## Syntax:
##
## 	user	MACHINE=COMMANDS
##
## The COMMANDS section may have other options added to it.
##
## Allow root to run any commands anywhere 
root	ALL=(ALL) 	ALL

## Allows members of the 'sys' group to run networking, software, 
## service management apps and more.
# %sys ALL = NETWORKING, SOFTWARE, SERVICES, STORAGE, DELEGATING, PROCESSES, LOCATE, DRIVERS

## Allows people in group wheel to run all commands
%wheel	ALL=(ALL) NOPASSWD:	ALL

## Same thing without a password
# %wheel	ALL=(ALL)	NOPASSWD: ALL

## Allows members of the users group to mount and unmount the 
## cdrom as root
# %users  ALL=/sbin/mount /mnt/cdrom, /sbin/umount /mnt/cdrom

## Allows members of the users group to shutdown this system
# %users  localhost=/sbin/shutdown -h now

## Read drop-in files from /etc/sudoers.d (the # here does not mean a comment)
#includedir /etc/sudoers.d
----------------IP ADDR---------------------------------------
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:18:56:ce brd ff:ff:ff:ff:ff:ff
    inet 10.7.1.103/24 brd 10.7.1.255 scope global dynamic noprefixroute enp0s3
       valid_lft 1097sec preferred_lft 1097sec
    inet6 fe80::1bd2:d79e:b767:d17d/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
----------------ROUTING TABLE---------------------------------
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
10.7.1.0    0.0.0.0         255.255.255.0   U         0 0          0 enp0s3
----------------ARP TABLE-------------------------------------
? (10.7.1.1) at 0a:00:28:00:00:00 [ether] on enp0s3
----------------FIREWALL--------------------------------------
running
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: enp0s3
  sources: 
  services: cockpit dhcpv6-client ssh
  ports: 
  protocols: 
  masquerade: no
  forward-ports: 
  source-ports: 
  icmp-blocks: 
  rich rules: 
	
----------------NETWORK CONNS---------------------------------
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      773/sshd            
tcp6       0      0 :::22                   :::*                    LISTEN      773/sshd            
udp        0      0 10.7.1.103:68       0.0.0.0:*                           757/NetworkManager  
raw6       0      0 :::58                   :::*                    7           757/NetworkManager  
Active UNIX domain sockets (servers and established)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name     Path
unix  2      [ ACC ]     STREAM     LISTENING     20767    738/sssd_nss         /var/lib/sss/pipes/nss
unix  2      [ ACC ]     STREAM     LISTENING     17717    1/systemd            @/org/kernel/linux/storage/multipathd
unix  2      [ ACC ]     STREAM     LISTENING     17463    1/systemd            /run/systemd/private
unix  2      [ ACC ]     SEQPACKET  LISTENING     17477    1/systemd            /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     20652    716/sssd             /var/lib/sss/pipes/private/sbus-monitor
unix  2      [ ACC ]     STREAM     LISTENING     19838    1/systemd            @ISCSID_UIP_ABSTRACT_NAMESPACE
unix  2      [ ACC ]     STREAM     LISTENING     20672    737/sssd_be    
...
output trimmed
```
