# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman -Sy --noconfirm nginx

# Copy files
COPY s6/nginx 	/etc/s6/nginx

# Configure nginx


# Define working directory
WORKDIR /etc/nginx

#Run s6
ENTRYPOINT ["/usr/bin/s6-svscan", "/etc/s6"]

# Define default command
CMD [""]

# Expose ports
EXPOSE 80
EXPOSE 443