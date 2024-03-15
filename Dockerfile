# Using Ubuntu 22.04 image as the base
FROM ubuntu:22.04

# Label to specify the maintainer of the image
LABEL Maintainer="Jean-Luc Mpande <mpandejl1@gmail.com>"

# Adding content from src/ to /var/www/html in the container
ADD src/ /var/www/html

# Updating packages and installing Apache
RUN apt-get update -y && \
    apt-get install -y apache2

# Exposing port 80 to allow access to Apache
EXPOSE 80

# Command to start Apache in the foreground
CMD [ "apache2ctl", "-D", "FOREGROUND" ]
