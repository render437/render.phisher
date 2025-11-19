<!-- render.phisher -->

<h1 align="left">render.phisher</h1>

<p align="left">
  <a href="https://github.com/render437/render.phisher">
    <img title="Version" src="https://img.shields.io/badge/Version-1.2-green?style=for-the-badge&logo=github"></a>
  <a href="https://github.com/render437/render.phisher/blob/main/LICENSE">
    <img title="License" src="https://img.shields.io/badge/License-GPL_3.0-orange?style=for-the-badge&logo=gnu"></a>
  <a href="https://github.com/render437/render.phisher/stargazers">
    <img title="Stars" src="https://img.shields.io/badge/Stars-0-yellow?style=for-the-badge&logo=github"></a>
   <a href="https://github.com/render437/render.phisher/issues">
    <img title="Issues" src="https://img.shields.io/badge/Issues-0-purple?style=for-the-badge&logo=github"></a>
   <a href="https://github.com/render437/render.phisher/network/members">
    <img title="FOrks" src="https://img.shields.io/badge/Forks-0-magenta?style=for-the-badge&logo=github"></a>
   <a href="https://github.com/render437/render.phisher/pulls">
     <img title="Pull Requests" src="https://img.shields.io/badge/Pull Requests-0-darkblue?style=for-the-badge&logo=github"></a>
</p>

<p align="left">
  <img src="https://img.shields.io/badge/Author-render437-blue?style=flat-square">
  <img src="https://img.shields.io/badge/Open%20Source-Yes-darkgreen?style=flat-square">
  <img src="https://img.shields.io/badge/Maintained%3F-Yes-lightblue?style=flat-square">
  <img src="https://img.shields.io/badge/Written%20In-Bash-darkcyan?style=flat-square">
</p>


<p align="left"><b>A beginner friendly, simple automated phishing tool with 15+ templates.</b></p>

---

<h3 style="text-align:center;">Disclaimer</h3>

<div class="disclaimer">
  <p><em><i>Any actions and or activities related to <b>render.phisher</b> is solely your responsibility. The misuse of this toolkit can result in <b>criminal charges</b> brought against the persons in question. <b>The contributors will not be held responsible</b> in the event any criminal charges be brought against any individuals misusing this toolkit to break the law.</i></p></em>

  <p><em><b>This toolkit contains materials that can be potentially damaging or dangerous for social media</b>. Refer to the laws in your province/country before accessing, using,or in any other way utilizing this in a wrong way.</em></p>
    
  <p><em>This tool is provided strictly for educational and research purposes to demonstrate how phishing works. Do not use any information, code, or techniques contained here to attempt unauthorized access to someone else’s accounts or systems — doing so is illegal. Use this toolkit at your own risk.</em></p>

  <p><em><b>This Tool is made for educational purposes only</b>. Do not attempt to violate the law with anything contained here. <b>If this is your intention, then get the fuck out of here</b>!</em></p>

  <p><em>If you are unsure about the legality of an action, seek professional legal advice before proceeding. <b>You shall not misuse the information to gain unauthorized access to someones social media</b></em></p>
  
  <p><em>This project is for educational, penetration-testing, or phishing-simulation purposes only and only demonstrates "how phishing works". Not for malicious use.</em></p>

</div>

---

### Features

- Latest and updated login pages.
- Beginner friendly
- Multiple tunneling options
  - Localhost
  - Cloudflared
- Mask URL support(might not work)
- Docker support

---

### Installation

- Just, clone this repository -
  ```
  git clone --depth=1 https://github.com/render437/render.phisher.git
  ```

- Now go to cloned directory and run `render.phisher.sh` -
  ```
  $ cd render.phisher
  $ bash render.phisher.sh
  ```

- On first launch, it'll install the dependencies automatically. That's it, ***render.phisher*** is installed!

---

### All-In-One Command
  ```
  git clone --depth=1 https://github.com/render437/render.phisher.git; cd render.phisher; bash render.phisher.sh
  ```

---

### Installation (Termux)
You can easily install render.phisher in Termux by using tur-repo
```
$ pkg install tur-repo
$ pkg install render.phisher
$ render.phisher
```

---

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

---

### Uninstall Process

- Just paste this command into your terminal -
  ```
  cd; sudo rm -r render.phisher
  ```

---

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

---

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

---

### Collaborators

Thanks to these amazing people for helping me build and improve this project!


| Collaborator | Contribution |
|-------------|--------------|
| [xroche](https://github.com/xroche) | Set up Cryptocurrency HTML website |
| [Aditya Shakya](https://github.com/adi1090x) | UI/UX design and styling |
| [htr-tech](https://github.com/htr-tech) | Helped set up Cloudflare infrastructure and Paypal HTML Website|
| [Ali Milani](https://github.com/AliMilani) | Discord and Instagram HTML and Image Hosting |
| [KasRoudra](https://github.com/KasRoudra) | Implemented and configured Facebook OAuth login methods |
| [TripleHat](https://github.com/TripleHat) | Configured Web Application Exploitation |
| [Mr.Derek](https://github.com/E343IO) | Developed Link Shortener Infrastructure |

---

### Find Me on:
<p align="left">
  <a href="https://beacons.ai/render437" target="_blank">
  <img src="https://img.shields.io/badge/Socials-grey?style=for-the-badge&logo=linktree&logoColor=white">
</a>
  <a href="https://github.com/render437" target="_blank"><img src="https://img.shields.io/badge/Github-blue?style=for-the-badge&logo=github"></a>
</p>


<!-- // -->
