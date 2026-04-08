# Lighttpd Docker Image

[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://opensource.org/licenses/MIT)
[![Docker Image Size](https://img.shields.io/docker/image-size/semhoun/lighttpd)](https://hub.docker.com/r/semhoun/lighttpd)
[![Docker Pulls](https://img.shields.io/docker/pulls/semhoun/lighttpd)](https://hub.docker.com/r/semhoun/lighttpd)

A lightweight Docker image for [Lighttpd](https://www.lighttpd.net/), a secure, fast, and flexible web server optimized for high-performance environments.

## Features

- Based on Debian slim for minimal footprint
- Automatic detection of `public/` subdirectory as document root
- Simple volume-based configuration
- Ready for production use

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
- (Optional) [Docker Compose](https://docs.docker.com/compose/install/)

## Quick Start

### Docker

```bash
docker run -d \
  -p 8080:80 \
  -v $(pwd)/www:/www \
  --name lighttpd \
  semhoun/lighttpd
```

### Docker Compose

```yaml
version: "3.8"

services:
  lighttpd:
    image: semhoun/lighttpd
    container_name: lighttpd
    volumes:
      - ./www:/www
    ports:
      - "8080:80"
    restart: unless-stopped
```

Then run:
```bash
docker-compose up -d
```

## Configuration

### Volumes

| Path | Description |
|------|-------------|
| `/www` | Web root directory. If a `public/` subdirectory exists, it will be used as the document root automatically. |

### Ports

| Port | Description |
|------|-------------|
| `80` | HTTP port |

## Project Structure

```
./www/
├── index.html          # Main entry point
└── ...
```

## Building from Source

```bash
git clone https://github.com/nathanael-semhoun/docker_lighttpd.git
cd docker_lighttpd
docker build -t my-lighttpd .
```

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

## Author

- **Nathanaël Semhoun** – [@semhoun](https://github.com/semhoun)

## Links

- [Docker Hub](https://hub.docker.com/r/semhoun/lighttpd)
- [GitHub Repository](https://github.com/semhoun/docker_lighttpd)
- [Lighttpd Documentation](https://redmine.lighttpd.net/projects/lighttpd/wiki)
