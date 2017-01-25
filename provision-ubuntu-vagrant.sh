#!/bin/bash
sudo apt-get install -qq -y software-properties-common git
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get -qq update
sudo apt-get install -qq -y ansible
echo -ne "[defaults]\nroles_path=/opt/ansible_roles\n" > /home/vagrant/.ansible.cfg
sudo mkdir -p /opt/ansible_roles
sudo chown -R vagrant: /opt/ansible_roles
ln -fTs /vagrant /opt/ansible_roles/ansible-role-oauth2-proxy
