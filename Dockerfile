# use node for base image
from node:latest
# copy file to container
copy index.js package.json /app/
# like cd, change work directory to /app
workdir /app
# execute install dependencies
run npm install && npm cache clean --force
# run service command
cmd node index.js
