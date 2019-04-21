#!/bin/bash

REPO=https://github.com/cwillhelm/docker-compose-hugo-ssl.git
WORKING_DIRECTORY=$HOME/staging
DOMAIN=rustedbits.com

rm -rf $WORKING_DIRECTORY

rsync -aqz $HOME/rustedbits/ $HOME/rustedbits_backup
rsync -aqz $WORKING_DIRECTORY $HOME/staging_backup

git clone $REPO $WOKRING_DIRECTORY

#cd ~/rustedbits/
#docker-compose down

cd ~/staging
docker-compose down
docker-compose up -d 

echo "Deployment completed successfully"
