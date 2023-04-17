# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /tourist-website

# Copy the package.json and package-lock.json files to the container
# COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY /tourist-website /app

# Build the application
RUN npm run build

# Use nginx as the base image for serving the static files
FROM nginx:alpine

# Copy the built application files to the nginx web server directory
COPY --from=0 /app/build /usr/share/nginx/html

# Expose port 80 for nginx
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
