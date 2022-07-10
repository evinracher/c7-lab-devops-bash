#!/usr/bin/expect
spawn sftp -o StrictHostKeyChecking=no -P 22 lab1@172.17.0.2
expect "password:"
send "mypass\n"
send "exit\n"