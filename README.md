# Nginx Docker image

[![Build Status](http://ci.hesjevik.im/buildStatus/icon?job=docker-nginx)](http://ci.hesjevik.im/job/docker-nginx/) [![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg?style=plastic)][docker_hub_repository]

This repository contains a **Dockerfiles** for Nginx Docker images. This repository is a part of an automated build, published to the [Docker Hub][docker_hub_repository].

[docker_hub_repository]: https://registry.hub.docker.com/u/gainmaster/nginx/

## Docker Hub repository tags

`gainmaster/nginx` provides multiple tagged images:

* `latest` : Alias to `http`
* `http` : Nginx HTTP static content server

## Resources

These resources have been helpful when creating this Docker image:

* [Dockerfile's Github repository for a Nginx Docker image.][github_repository_dockerfile_nginx]
* [Nginx core module documentation#deamon.][nginx_core_module_documentation#deamon]

[github_repository_dockerfile_nginx]: https://github.com/dockerfile/nginx
[nginx_core_module_documentation#deamon]: http://nginx.org/en/docs/ngx_core_module.html#daemon
