# rhel9
```
      ___     root@myserver.skillsexam.ntec220
     (.· |    OS:       Red Hat Enterprise Linux 9.2 (Plow)
     (<> |    KERNEL:   5.14.0-284 x86_64
    / __  \   SELINUX:  enabled; mode: Enforcing
   ( /  \ /|  SYSTEMD:  running (0/278 failed)
  _/\ __)/_)  UPTIME:   29 minutes
  \/-____\/   PACKAGES: 552
```
```
root@myserver ~/rhel9 # firewall-cmd --list-all
public (active)
  target: default
  icmp-block-inversion: no
  interfaces: ens192
  sources: 
  services: dhcp dns http samba
  ports: 34522/tcp
  protocols: 
  forward: yes
  masquerade: no
  forward-ports: 
  source-ports: 
  icmp-blocks: 
  rich rules:
```
```
root@myserver ~/rhel9 # ip -br a
lo               UNKNOWN        127.0.0.1/8 ::1/128 
ens192           UP             10.128.12.254/24
```
