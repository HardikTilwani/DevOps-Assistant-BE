#!/bin/sh
systemctl stop firewalld
systemctl disable firewalld
mkdir None
yum install python36 -y
pip3 install gdown
gdown --id 17UWQNVdBdGlyualwWX4Cc96KyZhD-lxz
gdown --id 1541gbFeGZZJ5k9Qx65D04lpeNBw87rM5
rpm -i /root/jdk-8u171-linux-x64.rpm
rpm -i /root/hadoop-1.2.1-1.x86_64.rpm --force
cp /root/hdfs-site.xml /etc/hadoop/
cp /root/core-site.xml /etc/hadoop/

hadoop-daemon.sh start datanode