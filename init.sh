sudo growpart /dev/sda 1
sudo xfs_growfs /dev/sda1
git config --global user.email "xingyu.zznou@gmail.com"
git config --global user.name "joa"
git clone https://github.com/xingyu-zhou/ansible-playbook-sample.git && cd ansible-playbook-sample && ansible-playbook -i development site.yml --diff
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
