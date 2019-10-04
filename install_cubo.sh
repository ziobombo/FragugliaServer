#! /bin/bash

ansible-galaxy --force install gantsign.java

ansible-playbook -i servers.ini cubo.yml --ask-vault-pass


