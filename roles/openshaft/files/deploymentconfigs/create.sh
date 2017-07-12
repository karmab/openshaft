
oc new project openshaft
oc create serviceaccount sa-anyuid
oc create serviceaccount sa-privileged
oc create -f pvcmysql.yml
oc create -f pvglance.yml

oc create -f mysql.yml
oc create -f rabbit.yml
sleep 120

oc create -f keystone.yml
sleep 120

oc create -f glance.yml
oc create -f cinder.yml
oc create -f neutron.yml
oc create -f nova.yml
oc create -f heat.yml
oc create -f horizon.yml
sleep 120

oc create -f cinder-volume.yml
oc create -f neutron-agents.yml

oc create -f nova-compute.yml

oc create -f swift.yml
oc create -f swift-storage.yml
