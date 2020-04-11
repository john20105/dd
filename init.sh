#!/bin/bash
systemctl start sshd 
systemctl start httpd
/usr/sbin/sshd -D
