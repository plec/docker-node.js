FROM node:8

# App directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY app/package*.json /usr/src/app

# Install application dependancies
RUN npm install

# Bundle app source
COPY app/app.js /usr/src/app

# Expose 8888 port of the application
EXPOSE 8888

# Run the app
CMD [ "node", "app.js" ]
