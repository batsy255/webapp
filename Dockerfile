# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Update the system
RUN apt-get update

# Install Apache
RUN apt-get install -y apache2

# Copy the index.html file from the current directory to the Apache web root directory
COPY index.html /var/www/html/

# Expose port 80 to allow connections to the Apache HTTP server
EXPOSE 80

# Start the Apache HTTP server
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

