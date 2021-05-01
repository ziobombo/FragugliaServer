#! /bin/bash

ansible-galaxy install geerlingguy.nfs

ansible-playbook -i servers.ini cubo.yml --ask-vault-pass
