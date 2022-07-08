#!/bin/bash
user=lab1
pass=mypass
docker pull atmoz/sftp
docker run --name lab1-container -p 22:22 -d atmoz/sftp $user:$pass:::shared-folder