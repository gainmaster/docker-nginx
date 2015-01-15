# Nginx Docker image

This repository contains a **Dockerfile** for a base Nginx Docker image, and provides **Vagrantfiles** for devleopment, and **shell scripts** for easy startup of containers. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/docker-nginx/


## Resources

These resources have been helpful when creating this Docker image, but they are mostly used as a source of inspiration. The examples provided in the resources, if used, have been tweeked to fit with our project.

* [Dockerfile's Github repository of Nginx Docker image.][github_repository_dockerfile_nginx]
* [DigitalOcean how to install Nginx on Ubuntu 14.04 LTS.][digital_ocean_how_to_install_nginx_on_ubuntu_14_04]
* [Nginx core module documentation#deamon.][nginx_core_module_documentation#deamon]

[github_repository_dockerfile_nginx]: https://github.com/dockerfile/nginx
[digital_ocean_how_to_install_nginx_on_ubuntu_14_04]: https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-ubuntu-14-04-lts
[nginx_core_module_documentation#deamon]: http://nginx.org/en/docs/ngx_core_module.html#daemon