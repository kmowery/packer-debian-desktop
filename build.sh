#!/bin/sh

rm -r packer-debian-7.5-amd64-virtualbox

packer build -only=virtualbox-iso packer.json
vagrant box add debian-7.5-desktop packer_virtualbox-iso_virtualbox.box
