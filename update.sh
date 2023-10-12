#!/bin/bash

function exe {
    echo
    echo "-----------"
    echo "Execute: $@"
    $@
    local status=$?
    if [[ $status != 0 ]]; then
	echo "ERROR: command $@ exited with status $status"
	exit 1
    fi
}


who=`whoami`
echo "Please wait file getting diff..."
exe "git fetch"

branch=`git branch | awk '/^\*/{print $2}'`

echo "Branch detected: ${branch}"
echo "The following files are modified/will be changes by an update:"
exe "git --no-pager diff --name-status -R origin/${branch}"

pwd=`pwd`

echo "Hit enter to update ${pwd}?"
read

exe "php artisan down"

exe "git reset --hard"
exe "git pull --force"

exe "composer update"

exe "php artisan migrate --force"

exe "php artisan auth:clear-resets"
exe "php artisan config:clear"
exe "php artisan view:clear"

exe "chown -R www-data:www-data /var/www/html/*"

exe "npm install"
exe "npm run production"

exe "supervisorctl reload"
sleep 5
#exe "supervisorctl restart my-worker:*"
#exe "supervisord -c horizon.conf"

exe "chgrp -R www-data storage bootstrap/cache"
exe "chmod -R ug+rwx storage bootstrap/cache"

exe "php artisan up"
