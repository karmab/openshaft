mkdir /glance
mkdir /mysql
mkdir /registry
echo '/glance *(rw)'  >>  /etc/exports
echo '/mysql *(rw)'  >>  /etc/exports
echo '/registry *(rw)'  >>  /etc/exports
chown nfsnobody:nfsnobody /registry
chmod 777 /registry
exportfs -r
systemctl start nfs ; systemctl enable nfs-server
iptables -A INPUT -p tcp --dport 2049 -j ACCEPT
service iptables save
yum -y install screen
