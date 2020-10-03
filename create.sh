#!/bin/bash
vagrant plugin install vagrant-disksize
vagrant up
echo 'git config --global user.email "xingyu.zznou@gmail.com"' | vagrant ssh
echo 'git config --global user.name "joa"' | vagrant ssh
echo 'git clone https://github.com/xingyu-zhou/ansible-playbook-sample.git && cd ansible-playbook-sample && ansible-playbook -i development site.yml --diff' | vagrant ssh
