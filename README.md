# docker-frontail

Docker image (~64MB) for [frontail](https://github.com/QNimbus/docker-frontail).

## Description

Frontail app with command line utility [wait-for](https://github.com/QNimbus/wait-for) installed to optionally delay the start of Frontail until another service/container becomes available

## Build

```
docker build -t qnimbus/docker-frontail .
```

## Usage

```
docker run --name frontail -d -P -v C:\Dev\docker\volumes\OpenHAB\userdata\logs:/log:ro qnimbus/docker-frontail --ui-highlight-preset /etc/openhab-preset.json -p 8080 /log/openhab.log /log/events.log
```
