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
id -Z ryan
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
ps aux | grep ryan
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
sudo chown -R ryan:ryan .dotfiles
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
