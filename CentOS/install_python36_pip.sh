set -e -x

# install python36
yum install epel-release -y
yum install python36 -y

# install pip3
cd /usr/local/src
curl -O https://bootstrap.pypa.io/get-pip.py
python36 get-pip.py

# set alias
cd /etc/profile.d/
wget http://***/files/linuxEnvScript/python.sh
echo 'run `source /etc/bashrc` in commandline to enable alias'

