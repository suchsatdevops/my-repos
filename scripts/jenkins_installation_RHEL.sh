#!/bin/bash

#java
cd /tmp
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm
rpm -ivf jdk-xxxxxxxx.rpm
rm -f jdk-xxxxxxxx.rpm

#Jenkins
wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
#install 
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum update -y
yum install jenkins -y
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

