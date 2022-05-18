#!/bin/bash

echo "--------------------= INPUT FILE =--------------------"
cat $1
echo "--------------------^ INPUT FILE ^--------------------"
echo "--------------------= RESULT =--------------------"
docker run -v "$(pwd)":/opt credmp/xxe-tester php /var/www/html/xxe.php /opt/$1
echo "--------------------^ RESULT ^--------------------"
