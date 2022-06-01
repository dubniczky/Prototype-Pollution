# JavaScript Prototype Pollution Attack

JavaScript Prototype Pollution Attack demo against a NodeJS Express server using Lodash

## Introduction

Prototype Pollution is an injection attack targeting JavaScript runtimes. Using it, we may overwrite the default values of any object's properties in the running instance. This tampering may lead to controlling the logic of the application, crashing the server or remote code execution.

## Usage

### Starting Server

Install dependencies:

```bash
yarn install
```

> If you don't have yarn installed: `npm install -g yarn`. You will need root privileges on Linux.

Start

```bash
node server
```

### Running the Exploit

- Bash: `./exploit.sh`
- PowerShell: `.\exploit.ps1`
- Python: `python exploit.py`
- Rest Client: [extension link](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)
