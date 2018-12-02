#!/bin/bash
#
#basic update
sudo apt-get update -y && sudo apt-get upgrade -y
#
#python 3 dependencies
sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev
wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz
tar xf Python-3.6.5.tar.xz
cd Python-3.6.5
./configure
make
sudo make altinstall
#
#removing source files to save space
cd ..
sudo rm -r Python-3.6.5
rm Python-3.6.5.tar.xz
sudo apt-get --purge remove build-essential tk-dev -y
sudo apt-get --purge remove libncurses5-dev libncursesw5-dev libreadline6-dev -y
sudo apt-get --purge remove libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev -y
sudo apt-get --purge remove libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev -y
sudo apt-get autoremove
sudo apt-get clean
#
# install virtual env
apt-get install python3-pip
pip3 install virtualenv 
#
## Part 1
# installing  flask
pip3 install flask
#
##Part 3
# install wtforms
pip3 install Flask-WTF
#
##Part 4
pip3 install flask-sqlalchemy
#to launch db
#python
#>>>from flaskblog import db
# install gedit
#sudo apt-get install gedit -y
#
# to make virtual environment directory, create virtual env and activate 
#mkdir Environments
#cd Environments
#virtualenv <projectname_env>
#source <projectname_env>/bin/activate
#
# to print list of dependencies in virtualenv: 
#pip freeze --local > requirements.txt
#
# to deactivate virtualenv
#deactivate
#
#to remove virtual env:
#rm -rf <virtual environment file> 
#
#
#
# to install dependencies from list
#pip install -r <path>/requirements.txt
#
# to launch flask from project directory
#FLASK_DEBUG=1
#FLASK_APP=<appname.py> flask run
#
#echo "alias aliasname='command'" >> ~/.bash_aliases && source ~/.bash_aliases







 





 
