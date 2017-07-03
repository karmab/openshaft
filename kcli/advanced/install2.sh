#!/bin/bash
ansible-playbook -i /root/hosts /usr/share/ansible/openshift-ansible/playbooks/byo/config.yml
htpasswd -b /etc/origin/master/htpasswd karim karim
htpasswd -b /etc/origin/master/htpasswd malika malika
