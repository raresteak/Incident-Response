#!/usr/bin/ksh
# AIX_IR_Live_Collection.sh
# Incident Response Live collection script
# TESTED AIX 7

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root or sudo"
   exit 1
fi
DATE=$(/usr/bin/date +%s)
OUTDIR=/tmp/$(/usr/bin/hostname)-IRLC-$DATE
TARFILE=/var/tmp/$(/usr/bin/hostname)-IRLC-$DATE.tar
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
echo "----------------KERNEL EXTENSIONS-----------------------------" >> $OUTFILE
/usr/bin/genkex >> $OUTFILE
echo "----------------RELEASE---------------------------------------" >> $OUTFILE
/usr/bin/oslevel -s >> $OUTFILE
/usr/sbin/instfix -i >> $OUTFILE
echo "----------------LPARSTAT--------------------------------------" >> $OUTFILE
/usr/bin/lparstat -i >> $OUTFILE
echo "----------------UPTIME----------------------------------------" >> $OUTFILE
/usr/bin/uptime >> $OUTFILE
echo "---------------CRON FILES-------------------------------------" >> $OUTFILE
/usr/bin/find /var/spool/cron -type f -print -exec cat {} \; >> $OUTFILE
echo "----------------MOTD------------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/motd >> $OUTFILE
echo "----------------LOGGED IN USERS-------------------------------" >> $OUTFILE
/usr/bin/w >> $OUTFILE
echo "----------------LAST SUCCESSFUL LOGGED IN USERS---------------" >> $OUTFILE
/usr/bin/last >> $OUTFILE
echo "----------------LAST UNSUCCESSFUL LOGINS----------------------" >> $OUTFILE
/usr/bin/who '-s' '/etc/security/failedlogin' >> $OUTFILE
echo "----------------USERS-----------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/passwd >> $OUTFILE
/usr/bin/cat /etc/security/passwd >> $OUTFILE
echo "----------------GROUPS----------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/group >> $OUTFILE
echo "----------------SUDO------------------------------------------" >> $OUTFILE
/usr/bin/cat /etc/sudoers >> $OUTFILE
/usr/bin/find /etc/sudoers.d -type f -print -exec cat {} \; >> $OUTFILE
echo "----------------IP ADDR---------------------------------------" >> $OUTFILE
/usr/sbin/ifconfig -a >> $OUTFILE
echo "----------------ROUTING TABLE---------------------------------" >> $OUTFILE
/usr/bin/netstat -rn >> $OUTFILE
echo "----------------ARP TABLE-------------------------------------" >> $OUTFILE
/usr/sbin/arp -a  >> $OUTFILE
echo "----------------FIREWALL--------------------------------------" >> $OUTFILE
/usr/sbin/lsfilt >> $OUTFILE
echo "----------------NETWORK CONNS---------------------------------" >> $OUTFILE
/usr/bin/netstat -An  >> $OUTFILE
echo "----------------PROCESSES-------------------------------------" >> $OUTFILE
/usr/bin/ps -efuxwwwem >> $OUTFILE
echo "----------------OPEN FILES------------------------------------" >> $OUTFILE
/usr/sbin/lsof >> $OUTFILE
echo "----------------MD5-------------------------------------------" >> $OUTFILE
/usr/bin/md5sum /usr/bin/md5sum  >> $OUTFILE
/usr/bin/md5sum /usr/sbin/lsfilt >> $OUTFILE
/usr/bin/md5sum /usr/bin/tar >> $OUTFILE
/usr/bin/md5sum /usr/bin/genkex >> $OUTFILE
/usr/bin/md5sum /usr/bin/oslevel >> $OUTFILE
/usr/bin/md5sum /usr/sbin/instfix >> $OUTFILE
/usr/bin/md5sum /usr/bin/find >> $OUTFILE
/usr/bin/md5sum /usr/bin/date >> $OUTFILE
/usr/bin/md5sum /usr/sbin/lsof >> $OUTFILE
/usr/bin/md5sum /usr/bin/netstat >> $OUTFILE
/usr/bin/md5sum /usr/sbin/arp >> $OUTFILE
/usr/bin/md5sum /usr/sbin/ifconfig >> $OUTFILE
/usr/bin/md5sum /usr/bin/cat >> $OUTFILE
/usr/bin/md5sum /usr/bin/ksh >> $OUTFILE
/usr/bin/md5sum /usr/bin/ls >> $OUTFILE
/usr/bin/md5sum /usr/bin/ps >> $OUTFILE
/usr/bin/md5sum /usr/bin/hostname >> $OUTFILE
/usr/bin/md5sum /usr/bin/df >> $OUTFILE
/usr/bin/md5sum /usr/bin/w >> $OUTFILE
/usr/bin/md5sum /usr/bin/chmod >> $OUTFILE
/usr/bin/md5sum /usr/bin/lssrc >> $OUTFILE
/usr/bin/md5sum /usr/bin/lslpp >> $OUTFILE
/usr/bin/md5sum /usr/bin/showmount >> $OUTFILE
echo "----------------LIST SERVICES----------------------------------" >> $OUTFILE
/usr/bin/lssrc -a >> $OUTFILE
echo "----------------LIST INSTALLED SOFTWARE------------------------" >> $OUTFILE
/usr/bin/lslpp -l >> $OUTFILE
echo "----------------LOGS-------------------------------------------" >> $OUTFILE
/usr/bin/tar -cf $OUTDIR/var-adm.tar.gz /var/adm
ls -l $OUTDIR/var-adm.tar.gz >> $OUTFILE
echo "----------------ETC CONTENTS-----------------------------------" >> $OUTFILE
/usr/bin/tar -cf $OUTDIR/etc.tar.gz /etc
/usr/bin/ls -l $OUTDIR/etc.tar.gz >> $OUTFILE
echo "----------------FILE SYSTEM------------------------------------" >> $OUTFILE
/usr/bin/df -T local >> $OUTFILE
echo "----------------NFS MOUNTS-------------------------------------" >> $OUTFILE
/usr/bin/showmount -a >> $OUTFILE
/usr/bin/showmount -e >> $OUTFILE
echo "----------------SHELL HISTORYS---------------------------------" >> $OUTFILE
/usr/bin/find / -name .bash_history -print -exec cat {} \; >> $OUTFILE
/usr/bin/find / -name .sh_history -print -exec cat {} \; >> $OUTFILE
echo "----------------UNOWNED FILES----------------------------------" >> $OUTFILE
/usr/bin/find / -type f -nouser >> $OUTFILE
echo "----------------SUID FILES-------------------------------------" >> $OUTFILE
/usr/bin/find / -user root -perm -4000 -exec ls -ldb {} \; >> $OUTFILE
echo "----------------Ended collection-------------------------------" >> $OUTFILE
/usr/bin/date >> $OUTFILE
/usr/bin/tar -cvf $TARFILE $OUTDIR
/usr/bin/chmod 600 $TARFILE
echo "[*]cleaning up..."
ls -ld $OUTDIR && rm -rf $OUTDIR
echo "[*]Retrieve collection file from $(hostname):$TARFILE"

