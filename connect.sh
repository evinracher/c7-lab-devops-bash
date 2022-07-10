#!/usr/bin/expect
spawn sftp -o StrictHostKeyChecking=no -P 22 lab1@172.17.0.2
expect "lab1@172.17.0.2's password:"
send "mypass\n"