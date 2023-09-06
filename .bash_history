sudo mv vsftpd.conf vsftpd.bak
sudo grep -v ^# /etc/vsftpd/vsftpd.bak > /etc/vsftpd/vsftpd.conf
sudo sudo grep -v ^# /etc/vsftpd/vsftpd.bak > /etc/vsftpd/vsftpd.conf
man vsftpd.conf
sudo getsebool -a | grep ftp
journalctl -xeu vsftpd.service
stat /etc/vsftpd/vsftpd.conf
journalctl -u ftp
journalctl -p err..alert
sudo sed -i 's/\r$//' /etc/vsftpd/vsftpd.conf
sudo getenforce
sudo sestatus
sudo semodule -l
sudo semodule -l | grep pf-10
sudo dmesg | grep -i -e type=1300 -e type=1400
sudo grep "SELinux is preventing" /var/log/messages
sudo semanage login -l
seinfo -u
sudo semanage boolean -l | grep on
id -Z user
sudo semanage port -l | grep http
sudo journalctl -t setroubleshoot
sudo semodule -lfull | grep suppress
sudo semodule -lfull | grep -v ^100
dnf info setools-console
seinfo suppress-pf-10
man seinfo
man selinux
wget https://www.webmin.com/download/rpm/webmin-current.rpm
sudo dnf whatprovides perl(Digest::SHA)
sudo dnf whatprovides perl
sudo dnf install unzip perl
sudo rpm -Uvh webmin-current.rpm
firewall-cmd --get-services
sudo firewall-cmd --add-port=10000/tcp --permanent
sudo firewall-cmd --reload
wget https://download.webmin.com/jcameron-key.asc
sudo rpm --import jcameron-key.asc
sudo rpm -Uvh webmin-current.rpm
rpm -q gpg-pubkey --qf '%{NAME}-%{VERSION}-%{RELEASE}\t%{SUMMARY}\n'
sudo sestatus
sudo ausearch -m AVC,USER_AVC,SELINUX_ERR,USER_SELINUX_ERR -ts recent
sudo dnf group info gnome
sudo dnf group install gnome
sudo dnf group install workstation
sudo systemctl set-default graphical.target
sudo systemctl isolate graphical
sudo systemctl stop mcelog
sudo systemctl disable mcelog
systemctl status mcelog
sudo firewall-cmd --permanent --add-service=vnc-server
sudo dnf info xrdp
sudo dnf install xrdp
sudo systemctl enable xrdp
sudo firewall-cmd --add-port=3389/tcp --permanent
sudo getsebool -a | grep xrdp
sudo getsebool -a | grep rdp
sudo systemctl start xrdp
sudo dnf info firewall-config
sudo dnf install firewall-config
sudo systemctl enable cockpit
sudo systemctl enable cockpit.socket
file /lib/systemd/system/cockpit.service
sudo systemctl unmask cockpit.socket
sudo systemctl enable cockpit.socket
sudo systemctl start cockpit.socket
sudo dnf remove gnome-remote-desktop
sudo dnf remove gnome-remote-desktop
sudo dnf remove xrdp
sudo dnf remove firewall-config
sudo dnf group remove gnome
sudo dnf group remove workstation
dnf --help
rm -rf Desktop/ Documents/ Downloads/
sudo ausearch -m AVC,USER_AVC,SELINUX_ERR,USER_SELINUX_ERR -ts today
sudo firewall-cmd --permanent --remove-service=vnc-server
sudo firewall-cmd --permanent --remove-port=3389/tcp
sudo firewall-cmd --reload
sudo firewall-cmd --permanent --remove-port=3389/tcp
sudo firewall-cmd --list-all
w
loginctl list-sessions
tty
loginctl terminate-session 1
loginctl list-sessions
ps aux | grep user
ps aux | grep bash
w
loginctl
tty
ps aux | grep bash
loginctl terminate-session 7
ps aux | grep bash
loginctl
w
man tty
sudo adduser --home /home/git git
cat /etc/passwd | grep git
sudo usermod -s /usr/sbin/nologin git
cat /etc/passwd | grep git
cat /etc/passwd | grep nologin
cat /etc/passwd | sort
stat /usr/sbin/nologin
sudo mkdir -p /home/git/repos
sudo chown -R git:git /home/git/repos
sudo chmod 700 /home/git/repos
tty
w
sudo useradd git
sudo userdel -r git
passwd git
ssh-keygen -t rsa
ssh git@10.128.12.200 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
ssh -p 34522 git@10.128.12.200 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
cat ~/.ssh/id_rsa.pub | ssh -p 34522 git@localhost "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"
ssh -p 34522 git@localhost
sudo chown -R user:user .dotfiles
sudo dnf group remove "GNOME Desktop"
sudo dnf group remove "workstation"
sudo userdel gnome-initial-setup
dnf whatprovides httpd
traceroute google.com
traceroute youtube.com
sudo dnf clean all
sudo dnf autoremove
sealert -l "*"
sudo semanage fcontext -l | grep samba_share
sudo semanage fcontext -d '/var/samba/shared/carrot(/.*)?'
sudo semanage fcontext -d '/var/samba/shared/potato(/.*)?'
sudo restorecon -R /var/samba/shared
ranger --clean
sudo firewall-cmd --list-all
sudo firewall-cmd --remove-port=10000/tcp --permanent
sudo firewall-cmd --reload
gpg --list-keys
sudo rpm -e gpg-pubkey-11f63c51-3c7dc11d
sudo rpm -e gpg-pubkey-8916f2a2-64ae6550
rpm -q gpg-pubkey --qf '%{NAME}-%{VERSION}-%{RELEASE}\t%{SUMMARY}\n'
ls -dlh /var/www/html/www.local/
getsebool -a | grep ftp
chown -R wwwadmin:apache /var/www/html/www.local/
setsebool -P ftpd_full_access 1
getsebool -a | grep ftp
journalctl -u vsftpd
dnf info selinux-policy-devel
dnf install selinux-policy-devel
make -f /usr/share/selinux/devel/Makefile 
semodule -i suppress-named.pp
sestatus
> /var/log/audit/audit.log 
> /var/log/messages
journalctl --vacuum-time=1s
chown ftp:nobody /var/ftp/pub
ls -lhd /var/ftp/pub
chmod 755 /var/ftp/pub
grep "denied" /var/log/audit/audit.log
chown root:root /var/ftp/pub
getsebool -a | grep ftp
journalctl -xeu vsftpd.service
git checkout -- vsftpd.conf
setsebool -P ftpd_anon_write 0
setsebool -P ftpd_use_passive_mode 0
getsebool -a | grep ftp
nvim setroubleshoot_database.xml 
sudo ausearch -m AVC -i -ts recent
chown git:git /home/git/repos/dotfiles.git
chmod 755 /home/git/repos/dotfiles.git
git ls-tree --full-tree --name-only -r HEAD
rpm -ql samba
rpm -ql samba | grep etc
grep -R "disable_ipv6=yes" /etc
grep -R 'ipv6' .
grep -R 'work' .
dnf list installed dhcp*
userdel -r dhcpd
cat /etc/passwd | sort
systemctl disable smb nmb
systemctl stop smb nmb
dnf list installed smb nmb
ssh-keygen -t rsa -b 4096 -C "5797666+remotelyqueued@users.noreply.github.com"
cat .ssh/id_rsa.pub 
git remote set-url origin git@github.com:remotelyqueued/rhel9.git
git push origin main
semanage fcontext -l | grep samba
semanage fcontext -l | grep samba_share
semanage boolean -lC
semanage fcontext -lC
semanage user -lC
semanage permissive -lC
semanage port -d -t http_port_t -p tcp 8881
semanage port -d -t http_port_t -p tcp 8882
semanage port -lC
hostnamectl
named-checkconf /etc/named.conf
git reset
git remote set-url origin git@github.com:remotelyqueued/rhel9.git
usermod -d /home/wwwadmin -m wwwadmin
usermod -d /home/wwwadmin wwwadmin
semanage boolean -lC
semanage fcontext -lC
semanage port -lC
semanage user -lC
semanage login -lC
semanage permissive -lC
git clone https://github.com/remotelyqueued/rhel9.git
git remote set-url origin git@github.com:remotelyqueued/rhel9.git
