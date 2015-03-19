# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman -Sy --noconfirm nginx

# Create nginx root folder and set owner http
RUN mkdir /srv/http && chown -R http:http /srv/http

# Copy config
COPY /config/mime.types /etc/nginx/mime.types
COPY /config/nginx.conf /etc/nginx/nginx.conf

# Define working directory
WORKDIR /etc/nginx

# Define default command
CMD ["/usr/sbin/nginx"]
# -g 'pid /run/nginx.pid; error_log stderr;'"

# Expose ports
EXPOSE 80
EXPOSE 443
