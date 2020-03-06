# use node for base image
FROM node:latest
# copy file to container
COPY index.js package.json /app/
# like cd, change work directory to /app
WORKDIR /app
# execute install dependencies
RUN npm install && npm cache clean --force
# run service command
CMD [ "node index.js" ]
