# JavaScript Prototype Pollution Attack

JavaScript Prototype Pollution Attack demo against a NodeJS Express server using Lodash

[[_TOC_]]

## Introduction

Prototype Pollution is an injection attack targeting JavaScript runtimes. Using it, we may overwrite the default values of any object's properties in the running instance. This tampering may lead to controlling the logic of the application, crashing the server or remote code execution.

## Starting Server

3 options are included, from simplest to longest:

1. Using Docker-compose
1. Manual Container building
1. Manual installation and running

### Docker Compose

```bash
docker-compose up
```

### Manual Container

Build container

```bash
docker build -t protopoll .
```

Run container

```bash
docker run -p8080:8080 protopoll
```

### Manual

Install dependencies:

```bash
yarn install
```

> If you don't have yarn installed: `npm install -g yarn`. You will need root privileges on Linux.

Start

```bash
node server
```

## Running the Exploit

- Bash: `./exploit.sh`
- PowerShell: `.\exploit.ps1`
- Python: `python exploit.py`
- Rest Client: [extension link](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)

## License

Standard MIT license: [document](/LICENSE)

## Disclaimer

This tool is intended for demonstrational purposes, so only use against your own systems or against ones you have authorization for. I take no responsibility for your actions.
