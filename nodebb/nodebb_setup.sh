#!/bin/bash

ADMIN_USER=$(cat  << EOF
    {
        "admin:username":"admin",
        "admin:password":"admin1234",
        "admin:password:confirm":"admin1234",
        "admin:email":"admin2@domain.com"
    }
EOF
)

cd /usr/src/app
./nodebb upgrade
./nodebb setup "$ADMIN_USER"
npm install grunt-cli

echo "NodeBB Admin setup is done"
