#!/usr/bin/env bash

TESTING="${TESTING:-false}"

tmpdir=$(mktemp -d)
cd "$tmpdir"

cleanup() {
    cd $HOME
    rm -rf "$tmpdir"
}

trap cleanup SIGINT SIGTERM EXIT


sudo apt update
sudo apt install -y git ansible
git clone git://github.com/cloudmesh/ansible-cloudmesh-ubuntu-xenial
cd ansible-cloudmesh-ubuntu-xenial/tests

test $TESTING == true && git checkout dev

echo 'localhost ansible_connection=local' >inventory
ansible-playbook -i inventory test.yml

