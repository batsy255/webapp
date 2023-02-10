# Use an existing Docker image as the base image
FROM node:10.15.1-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the index.html file to the container
COPY index.html .

# Install the HTTP server
RUN npm config set registry https://registry.npm.taobao.org/
RUN npm install -g http-server

# Expose port 8080
EXPOSE 80

# Start the HTTP server
CMD ["http-server", "-p", "80"]
