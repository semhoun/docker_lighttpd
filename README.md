# Semhoun's Webserver

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)  ![Docker Size](https://img.shields.io/docker/image-size/semhoun/lighttpd)  ![Docker Pull](https://img.shields.io/docker/pulls/semhoun/lighttpd)

Lighttpd simple server

Used in E-Dune infra.

## Getting Started

### Prerequisities

In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

#### Docker

```shell
docker run -v ./www:/www semhoun/webserver
```
#### Docker Compose
```yaml
version: "3.2"

services:
  lighttpd:
    image: semhoun/lighttpd
    volumes:
      - ./www/:/www/
    ports:
      - 8080:80
```

#### Volumes

* `/www` - Website location (www/public would be detected as root directory)


## Built With

* Debian bullseye
* Lighttpd

## Find Us

* [GitLab](https://gitlab.com/semhoun/docker_lighttpd)
* [DockerHub](https://hub.docker.com/repository/docker/semhoun/lighttpd)

## Authors

* **Nathanaël Semhoun** -  [semhoun](https://gitlab.com/semhoun)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
