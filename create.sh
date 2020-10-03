#!/bin/bash
bash ./install-plugin.sh
vagrant up
cat ./init.sh | vagrant ssh
sleep 10s
echo "sudo cat /var/lib/jenkins/secrets/initialAdminPassword" | vagrant ssh
