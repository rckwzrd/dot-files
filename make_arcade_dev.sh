#!/bin/bash

### do manually before running script
# set executable with chmod u+x make_arcade_dev.sh
# make and activate a clean arcade dev env

### run script with
# source make_arcade_dev.sh
# ~/.make_arcade_dv.sh

# remove old dev branch and clone most recent
pwd
rm -rfv arcade/
git clone git@github.com:pythonarcade/arcade.git
cd arcade
pwd

# install editable package and dev requirements
pip install --upgrade pip
pip install -e .[dev]

# run tests
pytest

# build docs
sphinx-build -b html doc doc/build
