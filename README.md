# rinetd-0.62
rinetd install script

```
#############################
install
#############################
Execute install script as root
# sh install_rinetd.sh

Configure rinetd
# vim /usr/local/rinetd/etc/rinetd.conf

Restart rinetd
# systemctl restart rinetd.service


#########################
unisntall
#########################
# systemctl stop rinetd.service
# rm -rf /usr/local/rinetd
```
