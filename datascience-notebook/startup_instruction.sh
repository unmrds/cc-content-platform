#!/usr/bin/env bash 

cd /home/jovyan
cp /home/root/refreshWorkshops.sh /home/jovyan/refreshWorkshops.sh
/home/jovyan/refreshWorkshops.sh

chown -R jovyan /home/jovyan

# default password is 'password' = 'sha1:1d95470694eb:07ae647f40c58224acfb08bbf785ca63227da790'
# Change password by replacing the quoted SHA1 hash string in the following line:
# e.g. 'sha1:1d95470694eb:07ae647f40c58224acfb08bbf785ca63227da790'
start-notebook.sh --NotebookApp.password='sha1:1d95470694eb:07ae647f40c58224acfb08bbf785ca63227da790'
