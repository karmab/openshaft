#!/bin/bash
yum -y install openshift-ansible-playbooks
ssh-keyscan -H master.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H compute01.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H compute02.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H swift01.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H swift02.karmalabs.local >> ~/.ssh/known_hosts
ansible-playbook -i /root/hosts /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml
htpasswd -b /etc/origin/master/htpasswd karim karim
htpasswd -b /etc/origin/master/htpasswd malika malika
oc create -f /root/pvregistry.yml
oc create -f /root/pvcregistry.yml
oc volume deploymentconfigs/docker-registry --add --name=registry-storage -t pvc --claim-name=pvcregistry --overwrite
