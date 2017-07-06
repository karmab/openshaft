mkdir /glance
mkdir /cinder
mkdir /mysql
mkdir /registry
echo '/glance *(rw)'  >>  /etc/exports
echo '/cinder *(rw)'  >>  /etc/exports
echo '/mysql *(rw,no_root_squash)'  >>  /etc/exports
echo '/registry *(rw)'  >>  /etc/exports
chown nfsnobody:nfsnobody /registry
chmod 777 /registry
chcon -Rt svirt_sandbox_file_t /mysql
chcon -Rt svirt_sandbox_file_t /glance
chmod 165:165 /cinder
exportfs -r
systemctl start nfs ; systemctl enable nfs-server
iptables -A INPUT -p tcp --dport 2049 -j ACCEPT
service iptables save
yum -y install screen
