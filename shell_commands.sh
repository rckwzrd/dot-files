#!/bin/bash

# make script executable
sudo chmod u+x script.sh

# download file from URL, save as root name
curl -O https://place.com/root_name

# zip a directory

# display current date
date
timedatectl

# compress all files in a directory, keep files
gzip -kr dir/

# unzip a file
gunzip filename.gz

# compress a directory into a tar archive
tar -zcvf archive.tar.gz directory/

# unpack a tar archive into current directory
tar -zxvf archive.tar.gz

# view content of tar archive
tar -tf archive.tar.gz
