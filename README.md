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

docker run --name proutsql -e MYSQL_ROOT_PASSWORD=unix1234 -p 3306:3306 -d mysql:latest

also add this /etc/host entry for local testing
172.17.0.1 mysql controller rabbitmq

##Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab
