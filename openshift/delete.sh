#!/bin/bash

for component in mysql rabbit keystone glance cinder cinder-volume neutron neutron-agents nova nova-compute swift swift-storage horizon heat ; do
    oc delete all -l app=$component
done
rm -rf /mysql/*
rm -rf /glance/*
rm -rf /cinder/*
