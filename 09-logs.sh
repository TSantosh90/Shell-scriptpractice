#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/Shell-scriptpractice"
LOGS_FILE="/var/log/Shell-scriptpractice/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Please run with sudo access" | tee -a $LOGS_FILE
    exit 1 
fi

mkdir -p $LOGS_FOLDER
##Function name ###
VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "$2....failure" | tee -a $LOGS_FILE
    exit 1 
else
echo "$2...Success" | tee -a $LOGS_FILE
fi
}

dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "Installing Nginx"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "Installing Mysql"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "Installing nodejs"