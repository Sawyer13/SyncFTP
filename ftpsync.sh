#!/bin/bash
HOST=ftp.example.com
USER=ftpuserexample
PASSWORD=`echo eW91cnBhc3N3b3JkCg== | base64 --decode`

###############################################
# To encrypt your password use via terminal:  #
# 					      #
# echo yourpassword | base64		      #
#					      #
###############################################

ftp -inv $HOST <<EOF
user $USER $PASSWORD
cd /yourpath
mput *.html
bye
EOF

