#!/bin/bash
# EL_IR_Live_Collection.sh
# Incident Response Live collection script
# TESTED RHEL 7.2,CENTOS 7.6

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root or sudo" 
   exit 1
fi
DATE=$(/usr/bin/date +%s)
OUTDIR=/tmp/$(/usr/bin/hostname)-IRLC-$DATE
TARFILE=/var/tmp/$(/usr/bin/hostname)-IRLC-$DATE.tar.gz
/usr/bin/mkdir -m 700 $OUTDIR || exit
OUTFILE=$OUTDIR/$(hostname)-IR-LiveCollection.txt
/usr/bin/cp /dev/null $OUTFILE
echo "----------------Started collection----------------------------" >> $OUTFILE
/usr/bin/date >> $OUTFILE
echo "----------------RUNNING AS------------------------------------" >> $OUTFILE
/usr/bin/whoami >> $OUTFILE
echo "----------------HOSTNAME--------------------------------------" >> $OUTFILE
/usr/bin/hostname >> $OUTFILE
echo "----------------UNAME-----------------------------------------" >> $OUTFILE
/usr/bin/uname -a >> $OUTFILE
echo "----------------KERNEL MODULES--------------------------------" >> $OUTFILE
/usr/sbin/lsmod >> $OUTFILE
echo "----------------RELEASE---------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/redhat-release >> $OUTFILE
echo "----------------UPTIME----------------------------------------" >> $OUTFILE
/usr/bin/uptime >> $OUTFILE
echo "---------------CRON FILES-------------------------------------" >> $OUTFILE
/usr/bin/find /var/spool/cron -type f -print -exec cat {} \; >> $OUTFILE
echo "----------------MOTD------------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/motd >> $OUTFILE
echo "----------------LOGGED IN USERS-------------------------------" >> $OUTFILE
/usr/bin/w >> $OUTFILE
echo "----------------LAST SUCCESSFUL LOGGED IN USERS---------------" >> $OUTFILE
/usr/bin/last -n 50 >> $OUTFILE
echo "----------------LAST UNSUCCESSFUL LOGIN IN USERS--------------" >> $OUTFILE
/usr/bin/lastb -n 50 >> $OUTFILE
echo "----------------USERS-----------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/passwd >> $OUTFILE
/usr/bin/cat /etc/shadow >> $OUTFILE
echo "----------------GROUPS----------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/group >> $OUTFILE
echo "----------------SUDO------------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/sudoers >> $OUTFILE
/usr/bin/find /etc/sudoers.d -type f -print -exec cat {} \; >> $OUTFILE
echo "----------------IP ADDR---------------------------------------" >> $OUTFILE
/usr/sbin/ip a >> $OUTFILE
echo "----------------ROUTING TABLE---------------------------------" >> $OUTFILE
/usr/bin/netstat -rn >> $OUTFILE
echo "----------------ARP TABLE-------------------------------------" >> $OUTFILE
/usr/sbin/arp -a  >> $OUTFILE
echo "----------------FIREWALL--------------------------------------" >> $OUTFILE
/usr/bin/firewall-cmd --state >> $OUTFILE
for ZONE in $(/usr/bin/firewall-cmd --get-active-zones | grep -v interfaces); do
  /usr/bin/firewall-cmd --info-zone=${ZONE} >> $OUTFILE
done
echo "----------------NETWORK CONNS---------------------------------" >> $OUTFILE
/usr/bin/netstat -anp  >> $OUTFILE
echo "----------------PROCESSES-------------------------------------" >> $OUTFILE
/usr/bin/ps auxwwwem >> $OUTFILE
echo "----------------OPEN FILES------------------------------------" >> $OUTFILE
/usr/sbin/lsof >> $OUTFILE
echo "----------------MD5-------------------------------------------" >> $OUTFILE
/usr/bin/md5sum /usr/bin/md5sum  >> $OUTFILE
/usr/bin/md5sum /usr/bin/systemctl >> $OUTFILE
/usr/bin/md5sum /usr/bin/tar >> $OUTFILE
/usr/bin/md5sum /usr/bin/find >> $OUTFILE
/usr/bin/md5sum /usr/bin/date >> $OUTFILE
/usr/bin/md5sum /usr/sbin/lsof >> $OUTFILE
/usr/bin/md5sum /usr/bin/netstat >> $OUTFILE
/usr/bin/md5sum /usr/sbin/arp >> $OUTFILE
/usr/bin/md5sum /usr/sbin/ip >> $OUTFILE
/usr/bin/md5sum /usr/bin/firewall-cmd >> $OUTFILE
/usr/bin/md5sum /usr/bin/cat >> $OUTFILE
/usr/bin/md5sum /usr/bin/bash >> $OUTFILE
/usr/bin/md5sum /usr/sbin/lsmod >> $OUTFILE
/usr/bin/md5sum /usr/bin/ls >> $OUTFILE
/usr/bin/md5sum /usr/bin/ps >> $OUTFILE
/usr/bin/md5sum /usr/bin/hostname >> $OUTFILE
/usr/bin/md5sum /usr/bin/df >> $OUTFILE
/usr/bin/md5sum /usr/bin/w >> $OUTFILE
/usr/bin/md5sum /usr/bin/yum >> $OUTFILE
/usr/bin/md5sum /usr/bin/chmod >> $OUTFILE
echo "----------------LIST SERVICES----------------------------------" >> $OUTFILE
/usr/bin/systemctl list-units >> $OUTFILE
echo "----------------LIST INSTALLED SOFTWARE------------------------" >> $OUTFILE
/usr/bin/yum list installed >> $OUTFILE
echo "----------------LOGS-------------------------------------------" >> $OUTFILE
/usr/bin/tar cfz $OUTDIR/var-logs.tar.gz /var/log
ls -l $OUTDIR/var-logs.tar.gz >> $OUTFILE
echo "----------------ETC CONTENTS-----------------------------------" >> $OUTFILE
/usr/bin/tar cfz $OUTDIR/etc.tar.gz /etc
/usr/bin/ls -l $OUTDIR/etc.tar.gz >> $OUTFILE
echo "----------------FILE SYSTEM------------------------------------" >> $OUTFILE
/usr/bin/find / -xdev -printf "%m;%Ax;%AT;%Tx;%TT;%Cx;%CT;%U;%G;%s;%p\n" >> $OUTFILE
echo "----------------SHELL HISTORYS---------------------------------" >> $OUTFILE
/usr/bin/find / -name .bash_history -print -exec cat {} \; >> $OUTFILE
/usr/bin/find / -name .history -print -exec cat {} \; >> $OUTFILE
echo "----------------UNOWNED FILES----------------------------------" >> $OUTFILE
/usr/bin/find / -type f -nouser >> $OUTFILE
echo "----------------SUID FILES-------------------------------------" >> $OUTFILE
/usr/bin/find / -user root -perm -4000 -exec ls -ldb {} \; >> $OUTFILE
echo "----------------Ended collection-------------------------------" >> $OUTFILE
/usr/bin/date >> $OUTFILE
/usr/bin/tar cvfz $TARFILE $OUTDIR
/usr/bin/chmod 600 $TARFILE
echo "[*]cleaning up..."
ls -ld $OUTDIR && rm -rf $OUTDIR
echo "[*]Retrieve collection file from $(hostname):$TARFILE"
