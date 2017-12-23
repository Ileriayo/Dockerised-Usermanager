# Base
FROM node:alpine

# Create App Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy package.json to Work Directory
COPY package*.json /usr/src/app

# Install App Dependencies
RUN npm install

# Bundle App Source
COPY . /usr/src/app

# Expose port
EXPOSE 3000

CMD [ "npm", "start" ]
