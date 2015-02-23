# Pull base image
FROM bachelorthesis/archlinux

# Install Nginx
RUN pacman -Sy --noconfirm nginx

# Configure nginx


# Define working directory
WORKDIR /root

# Define default command
CMD ["bash"]

# Expose ports
EXPOSE 80
EXPOSE 443