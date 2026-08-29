#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run with sudo access"
exit 1
fi

echo "Installing Nginx"
dnf install Nginx -y
if [ @? -ne 0 ]; then
echo "Installing Nginx...Failure"
exit 1
else
    echo "Installing Ngnix....Success"
fi
