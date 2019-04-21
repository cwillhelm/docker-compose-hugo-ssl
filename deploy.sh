#!/bin/bash

REPO=https://github.com/cwillhelm/docker-compose-hugo-ssl.git
WORKING_DIRECTORY=$HOME/staging
DOMAIN=rustedbits.com

# Clean working directory
rm -rf $WORKING_DIRECTORY

# Backup current version
rsync -aqz $HOME/rustedbits/ $HOME/rustedbits_backup
rsync -aqz $WORKING_DIRECTORY $HOME/staging_backup

# Get updated version
git clone $REPO $WOKRING_DIRECTORY

cd ~/rustedbits/
docker-compose down

# Redeploy website
cd ~/staging
docker-compose down
docker-compose up -d 

echo "Deployment completed successfully"
