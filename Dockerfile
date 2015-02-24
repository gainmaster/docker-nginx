# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman -Sy --noconfirm nginx

# Tell Nginx to stay foregrounded
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Define working directory
WORKDIR /etc/nginx

# Define default command
CMD ["/usr/sbin/nginx"]
# -g 'pid /run/nginx.pid; error_log stderr;'"

# Expose ports
EXPOSE 80
EXPOSE 443