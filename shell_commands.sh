#!/bin/bash

# update system
sudo apt update
sudo apt upgrade - y
sudo apt autoremove -y  # remove uneeded dependancies
sudo apt clean          # clear apt cache

# uninstall thing
sudo apt purge thing    # remove thing and configs
sudo apt autoremove -y  # remove uneeded dependancies
sudo apt clean          # clear apt cache


# make script executable for user
sudo chmod u+x script.sh

# remove executable from user and group
sudo chmod a-x script.sh

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

# unzip in current directory
unzip project.zip

# unzip to a directoy
unzip project.zip -d /path/to/dir

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

# undo last commit, fix stuff, and commit
git reset HEAD~
git commit -c ORIG_HEAD

# change local branch to match remote branch
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a

# convert jupyter notebook to pdf
jupyter-nbconvert --to pdfviahtml sec7/prac7.ipynb

# get to msds faster
alias 383='cd Desktop/msds/DSC_383'
alias 385='cd Desktop/msds/DSC_385'
# source .bashrc

# get around faster with .bashrc
alias cl="clear"
alias dk="cd /home/mlr/Desktop"
alias ve="cd /home/mlr/venvs"
alias gt="cd /home/mlr/git"
# source .bashrc

# find a file
find / -name "_keydefaults.lua"

# pandoc convert docx source to markdown
pandoc -s doc.docx -t markdown -o doc.md

# pandoc convert docx to markdown, if images save to dir
pandoc doc.docx -o doc.md --extract-media=./images/

# parse health data xml to csv with python and jq
python3 parse.py data/export.xml | jq -r '[.endDate, .type, .unit, .value] | @csv' > data/heart_rate.csv

# open file explorer with path as variable
xdg-open $(bundle info --path minima)

# upgrade python enivornment with updated dependancies
pip install -r requirements.txt --upgrade
