#!/bin/bash

version="7.3.18"
filename="xampp-linux-x64-${version}-0-installer.run"

urlDownload="https://www.apachefriends.org/xampp-files/${version}/${filename}"

echo "URL Download: ${urlDownload}"
wget -q --spider $urlDownload
checkFile=$?

echo $checkFile

if [ $checkFile = 0 ]; then
    wget $urlDownload
else
    echo "File not found, check link download"
fi

chmod +x ${filename}
script="sudo ./${filename}"
eval $script