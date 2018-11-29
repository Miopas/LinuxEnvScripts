#!/bin/sh
set -e

version=2.11.6
wget http://***/files/packages/scala-${version}.tgz

tar xvf scala-${version}.tgz
sudo mv scala-${version} /usr/local/
ln -s /usr/local/scala-${version} /usr/local/scala

echo "export PATH=$PATH:/usr/local/scala/bin" >> /etc/profile.d/scala.sh
source /etc/profile.d/scala.sh 
scala -version


