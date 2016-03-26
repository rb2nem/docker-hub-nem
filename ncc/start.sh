#!/bin/bash


echo "$@"
if [[ $# -eq 0 ]]; then
  cd /package/ncc 
  exec su -c 'java -Xms512M -Xmx1G -cp ".:./*:../libs/*" org.nem.deploy.CommonStarter' nem
fi

exec "$@"
