set -e -x

# check dependency 
echo "check pcre..."
ldconfig -p | grep pcre

echo "check zlib..."
yum list zlib

echo "check ssl..."
ldconfig -p | grep ssl

while true; do
    read -p "Are all dependencies sufficient?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# install nginx
version=1.9.9
wget http://***/files/packages/nginx-${version}.tar.gz

tar -zxvf nginx-${version}.tar.gz

cd nginx-${version} 
./configure --prefix=/usr/local/nginx \
            --http-proxy-temp-path=/usr/local/nginx/cache --with-stream

make
make install

