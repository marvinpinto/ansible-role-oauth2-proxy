#!/bin/bash
sudo apt-get install -qq -y software-properties-common git
sudo apt-get install -y python-all-dev python-crypto
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py
sudo pip install --upgrade pip
sudo pip install ansible==2.2.1.0
echo -ne "[defaults]\nroles_path=/opt/ansible_roles\n" > /home/vagrant/.ansible.cfg
sudo mkdir -p /opt/ansible_roles
sudo chown -R vagrant: /opt/ansible_roles
ln -fTs /vagrant /opt/ansible_roles/ansible-role-oauth2-proxy
