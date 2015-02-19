#!/bin/bash

if ! [ `which ansible` ]; then
    sudo rpm -ivh http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
    sudo sed -ir 's@^#baseurl=@baseurl=@g' /etc/yum.repos.d/epel.repo
    sudo sed -ir 's@^mirrorlist=@#mirrorlist=@g' /etc/yum.repos.d/epel.repo
    sudo yum install -y ansible
fi

cd ansible
ansible-playbook devserver.yml -i hosts
