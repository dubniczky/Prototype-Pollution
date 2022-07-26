# JavaScript Prototype Pollution Attack

JavaScript Prototype Pollution Attack demo against a NodeJS Express server using Lodash

<div align="center">
  <a href="https://gitlab.com/richard-nagy/">
    <img src="https://media.githubusercontent.com/media/dubniczky/Prototype-Pollution/20a650ce06cf29977789c6e0665444b955366683/assets/logo.png" alt="Avatar" width="130" height="150"/>
  </a>
</div>

## Support ❤️

If you find the project useful, please consider supporting, or contributing.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/dubniczky)

## Introduction

Prototype Pollution is an injection attack targeting JavaScript runtimes. Using it, we may overwrite the default values of any object's properties in the running instance. This tampering may lead to controlling the logic of the application, crashing the server or remote code execution.

## Server Requirements

> Please note that the program might work on earlier versions, but it has not been tested.

### Using Docker-compose

- Docker-compose `v1.29.2`
- Docker `v4.7.1`

### Using Manual Docker

- Docker `v4.7.1`

### Using Manual

- NodeJS `v16.15.0`
- Yarn `v3.2.1`

> The project uses yarn berry with plug'n'play to keep the packages locally since they contain vulnerabilities thus might be removed eventually.

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

## Example run

Example server run

![example server run](/assets/example-server.png)

Example exploit

![example server run](/assets/example-exploit.png)

## License

Standard MIT license: [document](/LICENSE)

## Disclaimer

This tool is intended for demonstrational purposes, so only use against your own systems or against ones you have authorization for. I take no responsibility for your actions.
