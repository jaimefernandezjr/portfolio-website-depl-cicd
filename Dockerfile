# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the rest of the application files to the container
COPY . .

# Build the application
RUN npm run build

# Use nginx as the base image for serving the static files
FROM nginx:alpine

# Copy the nginx configuration file to the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy the built application files to the nginx web server directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 for nginx
EXPOSE 8000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
