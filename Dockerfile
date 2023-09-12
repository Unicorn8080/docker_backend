
# Use a specific version of Node.js with alpine as the base image
FROM node:14-alpine

# Copy the entire current directory into the /usr/src/server directory in the container
COPY . /usr/src/server

# Set the working directory to /usr/src/server
WORKDIR /usr/src/server

# Install project dependencies using yarn
RUN yarn install

# Expose port 4040 for the application
EXPOSE 4040

# Set the NODE_ENV environment variable to 'production'
ENV NODE_ENV production

# Start the application using the npm run start command
CMD ["npm", "run", "start"]
