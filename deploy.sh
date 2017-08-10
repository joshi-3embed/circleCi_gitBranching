#!/bin/bash


sshpass -p fancy@2017 ssh -o StrictHostKeyChecking=no root@138.197.115.47  << EOF

echo '1. Updating sources'
cd /var/www/html/gitCircle/circleCi_gitBranching
git checkout --force master
git pull

echo "2. Restart apache"
sudo apache2ctl graceful

echo 'Done!'

EOF
