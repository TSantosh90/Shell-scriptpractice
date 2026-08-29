#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run with sudo access"
    exit 1 
fi

echo "Installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installing nginx....failure"
    exit 1 
else
echo "Installing nginx...Success"
fi
