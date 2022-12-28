![example workflow](https://github.com/bin2bin-applications/hextris/actions/workflows/docker-image.yml/badge.svg)

<h1 id="app:name">Hextris</h1>

<img id="app:logo" src="https://cdn.jsdelivr.net/gh/bin2bin-applications/hextris@master/logo.png" width="180" height="180"></img>

## Developer

<p>Click <a id="app:developer" href="https://hextris.io/">here</a> to go to developer site</p>

## Description

<p id="app:short-description">An addictive puzzle game inspired by Tetris.</p>

<p id="app:long-description">Fast paced and an addictive HTML5 puzzle game inspired by Tetris!</p>

## Supported Architectures

The architectures supported by this image are:

| Architecture | Available | Tag    |
| :----------: | :-------: | ------ |
|    x86-64    |    ✅     | latest |

## Version Tags

The version tags available for this image are:

|  Tag   | Available | Description                           |
| :----: | :-------: | ------------------------------------- |
| latest |    ✅     | Stable releases with Ubuntu baseimage |

## Docker Pull

```bash
docker pull ghcr.io/bin2bin-applications/hextris:latest
```

## Docker Run

```bash
docker run -d --volume /tmp/app:/app -p 8080:8080 ghcr.io/bin2bin-applications/hextris:latest
```