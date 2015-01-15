# Pull base image
FROM bachelorthesis/docker-ubuntu

# Install Nginx from apt repository
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/*

# Configure nginx
RUN \
  # Disable nginx run as deamon 
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Define working directory
WORKDIR /etc/nginx

# Define default command
CMD ["nginx"]