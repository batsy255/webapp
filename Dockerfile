# Use the official Nginx image as the base image
FROM nginx

# Copy the index.html file to the Nginx container
COPY index.html /usr/share/nginx/html

# Expose port 80 to allow connections to the web server
EXPOSE 80
