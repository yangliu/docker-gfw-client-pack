#!/bin/bash

# update system
apt-get update

# install and update openssl to 1.0.2 (from stretch)
apt-get -y install openssl ca-certificates
dpkg -i /root/apps/libssl1.0.2_1.0.2h-1_amd64.deb
dpkg -i /root/apps/openssl_1.0.2h-1_amd64.deb

# install dependency for nghttpx
apt-get -y install init-system-helpers libev4 libjansson4 libjemalloc1 libxml2 python

# install nghttpx
dpkg -i /root/apps/libnghttp2-14_1.11.0-1_amd64.deb
dpkg -i /root/apps/nghttp2-proxy_1.11.0-1_amd64.deb

