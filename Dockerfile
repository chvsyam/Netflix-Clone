FROM ubuntu

# Update the package list and install Apache in one RUN command
RUN apt-get update -y && apt-get install apache2 -y

# Set the ServerName to localhost to avoid the FQDN warning
RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

# Copy application files to Apache's default directory
COPY . /var/www/html/

# Change Apache configuration to listen on port 4000
RUN sed -i 's/Listen 80/Listen 4000/' /etc/apache2/ports.conf

# Expose port 4000
EXPOSE 4000

# Run Apache in the foreground
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
