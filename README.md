# Nginx Docker image

This repository contains a **Dockerfile** for a base Nginx Docker image. It provides **Vagrantfiles** for devleopment, and **shell scripts** for easy startup of containers. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [bachelorthesis/docker-ubuntu][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/docker-nginx/
[docker_hub_base_image]: https://registry.hub.docker.com/u/bachelorthesis/docker-ubuntu/

### Installed packages

* [NGINX][nginx] - HTTP and reverse proxy server.

[nginx]: http://nginx.org/

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for a Nginx Docker image.][github_repository_dockerfile_nginx]
* [DigitalOcean - How to install Nginx on Ubuntu 14.04 LTS.][digital_ocean_how_to_install_nginx_on_ubuntu_14_04]
* [Nginx core module documentation#deamon.][nginx_core_module_documentation#deamon]

[github_repository_dockerfile_nginx]: https://github.com/dockerfile/nginx
[digital_ocean_how_to_install_nginx_on_ubuntu_14_04]: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-14-04-lts
[nginx_core_module_documentation#deamon]: http://nginx.org/en/docs/ngx_core_module.html#daemon