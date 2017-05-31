# OPENSHAFT repository

[![Build Status](https://travis-ci.org/karmab/openshaft.svg?branch=master)](https://travis-ci.org/karmab/openshaft)

A set of roles to deploy openstack containers in a spread per component way

## TODO LIST

- improve documentation !!!

## RUN

```
ansible-playbook playbooks/all.yml  --tags=keystone
```

## HELPER CONTAINERS

```
docker run --name proutsql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=unix1234 -d mysql:latest
docker run --name rabbit -p 5672:5672 -d --hostname rabbit -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest rabbitmq:3-management
```

also add this /etc/host entry for local testing
172.17.0.1 mysql controller rabbitmq glance cinder neutron nova heat ceilometer swift

# RUN CONTAINERS
```
docker run -p 5000:5000 -it --entrypoint=/bin/bash openshaft/keystone
docker run -p 9191:9191 -p 9292:9292 -it --entrypoint=/bin/bash openshaft/glance
```
##Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab
