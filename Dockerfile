FROM your_base_image

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy your application files here, if needed
COPY ./Netflix-Clone /var/www/html/

# Start Apache
CMD ["apachectl", "-D", "FOREGROUND"]
