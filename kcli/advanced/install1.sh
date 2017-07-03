yum -y install openshift-ansible-playbooks screen
ssh-keyscan -H master.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H compute01.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H compute02.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H swift01.karmalabs.local >> ~/.ssh/known_hosts
ssh-keyscan -H swift02.karmalabs.local >> ~/.ssh/known_hosts
