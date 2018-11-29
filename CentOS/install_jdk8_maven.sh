set -e -x

# java
yum install java-1.8.0-openjdk* -y

# maven
wget http://***/files/packages/apache-maven-3.5.4-bin.tar.gz
tar -xf apache-maven-3.5.4-bin.tar.gz
mv apache-maven-3.5.4/ apache-maven/

cd /etc/profile.d/
wget http://***/files/linuxEnvScript/maven.sh
chmod +x maven.sh

echo 'done, please run "source /etc/profile.d/maven.sh" in commandline'
