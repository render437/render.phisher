<!-- render.phisher -->

<h1 align="center">render</h1>

<p align="center">
  <a href="https://github.com/render437/render.phisher">
    <img title="Version" src="https://img.shields.io/badge/Version-1.2.0-green?style=for-the-badge"></a>
  <a href="https://github.com/render437/render.phisher">
    <img title="License" src="https://img.shields.io/badge/License-GNU-orange?style=for-the-badge"></a>
  <a href="https://github.com/render437/render.phisher">
    <img title="Stars" src="https://img.shields.io/badge/Stars-0-yellow?style=for-the-badge"></a>
  <a href="https://github.com/render437/render.phisher">
    <img title="Issues" src="https://img.shields.io/badge/Issues-0-cyan?style=for-the-badge"></a>
  <a href="https://github.com/render437/render.phisher">
    <img title="Issues" src="https://img.shields.io/badge/Forks-0-purple?style=for-the-badge"></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Author-render437-blue?style=flat-square">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Bash-darkcyan?style=flat-square">
</p>


<p align="center"><b>A beginner friendly, simple automated phishing tool with 10+ templates.</b></p>

##

<h3 style="text-align:center;">Disclaimer</h3>

<div class="disclaimer">
  <p><em>All actions and activities involving <strong>render.phisher</strong> are the sole responsibility of the user. Misuse of this toolkit may result in <strong>criminal or civil penalties</strong>. The contributors and maintainers accept no liability for any legal consequences arising from improper or unlawful use.</em></p>

  <p><em>This toolkit may contain materials that could be harmful if used improperly. Before accessing or using any of its components, consult and comply with the laws and regulations applicable in your jurisdiction.</em></p>

  <p><em>This tool is provided strictly for <strong>educational and research purposes</strong> to demonstrate how phishing works. Do not use any information, code, or techniques contained here to attempt unauthorized access to someone else’s accounts or systems — doing so is illegal. Use this toolkit at your own risk.</em></p>

  <p><em>If you are unsure about the legality of an action, seek professional legal advice before proceeding.</em></p>
</div>


##

### Features

- Latest and updated login pages.
- Beginner friendly
- Multiple tunneling options
  - Localhost
  - Cloudflared
  - LocalXpose(might not work)
- Mask URL support(might not work)
- Docker support

##

### Installation

- Just, Clone this repository -
  ```
  git clone --depth=1 https://github.com/render437/render.phisher.git
  ```

- Now go to cloned directory and run `render.phisher.sh` -
  ```
  $ cd render.phisher
  $ bash render.phisher.sh
  ```

- On first launch, It'll install the dependencies and that's it. ***render.phisher*** is installed.

##

### All-In-One Command
  ```
  git clone --depth=1 https://github.com/render437/render.phisher.git; cd render.phisher; bash render.phisher.sh
  ```

##

### Installation (Termux)
You can easily install render.phisher in Termux by using tur-repo
```
$ pkg install tur-repo
$ pkg install render.phisher
$ render.phisher
```

##

### Installation via ".deb" file

- Download `.deb` files from the [**Latest Release**](https://github.com/render437/render.phisher/releases/latest)
- If you are using ***termux*** then download the `*_termux.deb`

- Install the `.deb` file by executing
  ```
  apt install <your path to deb file>
  ```
  Or
  ```
  $ dpkg -i <your path to deb file>
  $ apt install -f
  ```

##

### Uninstall Process

- Just paste this command into your terminal -
  ```
  cd; sudo rm -r render.phisher
  ```

##

### Run on Docker

- Docker Image Mirror:
  - **DockerHub** : 
    ```
    docker pull render437/render.phisher
    ```
  - **GHCR** : 
    ```
    docker pull ghcr.io/render437/render.phisher:latest
    ```

- By using the wrapper script [**run-docker.sh**](https://raw.githubusercontent.com/render437/render.phisher/master/run-docker.sh)

  ```
  $ curl -LO https://raw.githubusercontent.com/render437/render.phisher/master/run-docker.sh
  $ bash run-docker.sh
  ```
- Temporary Container

  ```
  docker run --rm -ti render437/render.phisher
  ```
  - Remember to mount the `auth` directory.

##

  <summary><h3>Dependencies</h3></summary>

<b>render.phisher</b> requires following programs to run properly - 
- `git`
- `curl`
- `php`
> All the dependencies will be installed automatically when you run **render.phisher** for the first time.
</details>

  <summary><h3>Tested on</h3></summary>

- **Ubuntu**
- **Debian**
- **Arch**
- **Manjaro**
- **Fedora**
- **Termux**
</details>

##

<h3 align="center"><i>:: Workflow ::</i></h3>
<p align="center">
<img src=".github/misc/workflow.gif"/>
</p>

##

### Find Me on:
<p align="left">
  <a href="https://beacons.ai/render437" target="_blank">
  <img src="https://img.shields.io/badge/Socials-grey?style=for-the-badge&logo=linktree&logoColor=white">
</a>
  <a href="https://github.com/render437" target="_blank"><img src="https://img.shields.io/badge/Github-blue?style=for-the-badge&logo=github"></a>
</p>


<!-- // -->
