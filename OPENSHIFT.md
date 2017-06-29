

# KEYSTONE PERMISSIONS
in the openshaft project, as standard user 
oc create serviceaccount sa-anyuid

as an admin cluster, we add the following to the users list ( with oc edit scc anyuid )
- system:serviceaccount:openshaft:sa-anyuid

finally, we edit the dc with oc edit dc/keystone and add the following in the containers section:
serviceAccount: sa-anyuid
serviceAccountName: sa-anyuid
