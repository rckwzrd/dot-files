#!/bin/bash

# make script executable
sudo chmod u+x script.sh

# download file from URL, save as root name
curl -O https://place.com/root_name

# display current date
date
timedatectl

# note on compression: .zip != .gzip != .tar

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

# zip directory
zip -r project.zip project

# unzip directory
unzip project.zip

# knit rmd to html and open in browser
Rscript -e "rmarkdown::render('Q1/HWQ1.Rmd')" && xdg-open Q1/HWQ1.html

# copy file into list of dirs with echo, xargs, and cp
echo ./dir1 ./dir2 ./dir3 | xargs -n 1 cp file.py

# remove untracked files from git
# dry run
git clean -f -d
# remove files
git clean -f

# reset local branch and pull remote changes
git reset --hard
git pull

# convert jupyter notebook to pdf
jupyter-nbconvert --to pdfviahtml sec7/prac7.ipynb

# get to msds faster
alias 383='cd Desktop/msds/DSC_383'
alias 385='cd Desktop/msds/DSC_385'
# source .bashrc

# find a file
find / -name "_keydefaults.lua"
