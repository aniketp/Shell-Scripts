#!bin/bash

curl -X POST localhost:8080/accounts/admin
cd ../aphrodite/
yarn start
