#!/bin/sh
SOURCE_URL=
SOURCE_REPO=generic-local
SOURCE_ADMIN=admin
SOURCE_PASSWORD=password

head -c 1024 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/1k

head -c 10240 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/10k

head -c 102400 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/100k

head -c 1024000 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/1000k

head -c 10240000 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/10000k

head -c 102400000 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/100000k

head -c 1024000000 </dev/urandom >myfile
curl -XPUT --upload-file myfile -u $SOURCE_ADMIN:$SOURCE_PASSWORD ${SOURCE_URL}/${SOURCE_REPO}/1000000k