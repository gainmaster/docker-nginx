# Nginx Docker image

[![Build Status](http://jenkins.hesjevik.im/buildStatus/icon?job=docker-nginx)](http://jenkins.hesjevik.im/job/docker-nginx/) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg?style=plastic)](https://registry.hub.docker.com/u/bachelorthesis/nginx/)

This repository contains a **Dockerfile** for a base Nginx Docker image. It provides **Vagrantfiles** for development, and **shell scripts** for easy startup of containers. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

**Base image:** [bachelorthesis/docker-arch][docker_hub_base_image]

[docker_hub_repository]: https://registry.hub.docker.com/u/bachelorthesis/nginx/
[docker_hub_base_image]: https://registry.hub.docker.com/u/bachelorthesis/archlinux/

### Installed packages

* [NGINX][nginx] - HTTP and reverse proxy server.

[nginx]: http://nginx.org/

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for a Nginx Docker image.][github_repository_dockerfile_nginx]
* [Nginx core module documentation#deamon.][nginx_core_module_documentation#deamon]

[github_repository_dockerfile_nginx]: https://github.com/dockerfile/nginx
[nginx_core_module_documentation#deamon]: http://nginx.org/en/docs/ngx_core_module.html#daemon
