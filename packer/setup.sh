#!/bin/bash
yum install java-1.8.0-openjdk-devel -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins* docker git -y
yum-config-manager --disable jenkins
usermod -aG docker -s /bin/bash jenkins
sed -i 's/JENKINS_USER="jenkins"/JENKINS_USER="root"/g' /etc/sysconfig/jenkins
systemctl enable jenkins
systemctl restart jenkins
systemctl enable docker
systemctl start docker
