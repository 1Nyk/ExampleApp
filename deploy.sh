#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
# Install pm2 - production process manager for Node.js
sudo npm install -g pm2
# stop any instance of our application running currently
pm2 stop ExampleApp
# change directory into folder where app is located
cd ExampleApp/
# Install app dependancies
npm install
echo "$PRIVATE_KEY" | base64 -d> privatekey.pem
echo "$SERVER" | base64 -d > server.crt
# Start the app with the process name example_app using pm2
pm2 start ./bin/www --name example_app