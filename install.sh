#! /bin/bash

ansible-galaxy --force install nginxinc.nginx
ansible-galaxy --force install geerlingguy.certbot
ansible-galaxy --force install SphericalElephant.shorewall

ansible-playbook -i server0.ini fragugliaserver.yml --ask-vault-pass

echo Don't forget to execute the following:
echo          Reason                               Command                       
echo ------------------------ -------------------------------------------------- 
echo server0 backup to cubo   server0> ssh-copy-id timemachine@cubo.casazza.eu  

