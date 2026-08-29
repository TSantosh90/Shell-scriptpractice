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

echo "Installing Mysql"
dnf install Mysql -y

if [ $? -ne 0 ]; then
    echo "Installing Mysql....failure"
    exit 1 
else
echo "Installing Mysql...Success"
fi

echo "Installing node.js"
dnf install node.js -y

if [ $? -ne 0 ]; then
    echo "Installing node.js....failure"
    exit 1 
else
echo "Installing node.js...Success"
fi
