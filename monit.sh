#!/bin/bash

ls /var/run/apache2/apache2.pid > /dev/null
 
if [ $? -eq 0 ]
then
  echo "##############################"
  echo "apache2 service is running"
  echo 'script run at $today'
  date

else
  echo "##############################"
  echo "Starting apache 2"
  sudo systemctl start apache2
fi
