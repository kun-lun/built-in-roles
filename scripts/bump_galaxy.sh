#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
go get github.com/mjibson/esc
pushd $DIR/../pkg/apis
  ansible-galaxy install geerlingguy.composer
  ansible-galaxy install geerlingguy.php
  ansible-galaxy install geerlingguy.glusterfs
  ansible-galaxy install geerlingguy.firewall
  ansible-galaxy install geerlingguy.git
  ansible-galaxy install geerlingguy.mysql
  ansible-galaxy install geerlingguy.redis
  ansible-galaxy install geerlingguy.php-redis
  ansible-galaxy install geerlingguy.php-mysql
  ansible-galaxy install nginxinc.nginx
popd

pushd $DIR/../pkg/apis
  go generate
popd

