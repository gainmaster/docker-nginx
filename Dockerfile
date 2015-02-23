# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman -Sy --noconfirm nginx

# Configure nginx


# Define working directory
WORKDIR /etc/nginx

#Run s6
#ENTRYPOINT ["/usr/bin/s6-svscan", "/etc/s6"]

# Define default command
CMD ["/usr/bin/nginx -g 'pid /run/nginx.pid; error_log stderr;'"]

# Expose ports
EXPOSE 80
EXPOSE 443