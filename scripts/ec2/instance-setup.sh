#!/bin/bash
yum -y update
yum install -y ruby
cd /home/ec2-user
curl -O https://aws-codedeploy-us-west-1.s3.amazonaws.com/latest/install
chmod +x ./install
./install auto
rm ./install

yum install -y emacs
yum install -y gcc

echo '''[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2013.03/mongodb-org/3.0/x86_64/
gpgcheck=0
enabled=1''' >> /etc/yum.repos.d/mongodb-org-3.0.repo

yum install -y mongodb-org
sudo service start mongod start

curl -O https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
chmod +x ./Anaconda3-4.2.0-Linux-x86_64.sh
./Anaconda3-4.2.0-Linux-x86_64.sh -b
rm ./Anaconda3-4.2.0-Linux-x86_64.sh
echo 'PATH=/home/ec2-user/anaconda3/bin:$PATH' >> .bash_profile
. ./bash_profile

pip install --upgrade pip
pip install pomegrante
pip install pymongo
pip install gunicorn
