## Ngrok Setup Tutorial
### 1. ) Get your authtoken from ngrok (one-time)
- Open a browser and sign in / sign up: https://dashboard.ngrok.com/get-started/your-authtoken
- Copy the long string shown (that’s your authtoken). You’ll use it in the next step. (official place to get the token)

<h2></h2>

### 2. ) Install ngrok (Linux / macOS / Windows — pick one)
- Install using the quick download or manually install ngrok:
  - **Option A** — quick download + install (manual):
    ```bash
    # from your home dir
    wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.zip -O ngrok.zip
    unzip ngrok.zip
    chmod +x ngrok
    sudo mv ngrok /usr/local/bin/ngrok
    ```
  - **Option B** — use the Linux package if you prefer (ngrok provides an apt repo on Debian-based systems). [See docs](https://ngrok.com/blog/the-ngrok-cheat-sheet?utm_source=chatgpt.com)
    - ***macOS*** — Using Homebrew (recommended):
      ```bash
      brew install ngrok
      ```
      
    - ***Windows*** — Download files to run:
      Download the Windows zip from ngrok.com, unzip, then either run `ngrok.exe` from that folder or add it to PATH. You can also install via winget/scoop.

<h2></h2>

### 3. ) Add the authtoken to your local ngrok config (required)
- Run this command (replace `YOUR_TOKEN` with the token you copied):
  ```bash
  ngrok config add-authtoken YOUR_TOKEN
  ```
    - This command writes the token into ngrok’s configuration file so you don’t have to pass it every time.
    - On modern ngrok (v3) the config file is typically saved under `~/.config/ngrok/ngrok.yml` (older docs and some installs used `~/.ngrok2/ngrok.yml` — `ngrok config check` or `ngrok config edit` will show location).
- Example(copy and paste token):
  ```bash
  ngrok config add-authtoken 2N2p0I0d7Hg9a3bcdEFGhiJKLmnoPQRStuVWxYYYzZ
  ```
- **Windows special:** open Command Prompt or PowerShell **as Administrator** to run the command if you installed system-wide.

<h2></h2>

### 4. ) Verify the token is saved
- Check the config file or run:
  ```bash
  # show config location (v3)
  ngrok config check

  # or view the token (config file path is reported)
  cat ~/.config/ngrok/ngrok.yml    # Linux/macOS
  type %USERPROFILE%\.ngrok2\ngrok.yml  # Windows (if older path)
  ```
You should see `authtoken: <long string>` in the YAML. If `ngrok config check` reports a location; saved to that file.

<h2></h2>

### 5. ) Start a tunnel (free tier / HTTP example)
- Start your local web server (example: Python dev server on port 3333):
  ```bash
  # in one terminal window
  python3 -m http.server 3333
  ```
- Then start ngrok (HTTP, free tier):
  ```bash
  ngrok http 3333
  ```
You’ll see output with `Forwarding https://xxxxx.ngrok-free.app -> http://localhost:3333`. That HTTPS URL is your public link.

If you want to run it in background and capture URL programmatically, see next section. 

<h2></h2>

### 6. ) Programmatically get the public URL (from your script)
- Ngrok exposes a local API on port 4040 (when running). Example script snippet (bash) that starts ngrok in background and reads the public URL:
  ```bash
  # start ngrok in background
  ngrok http 3333 > /dev/null 2>&1 &
  
  # wait a bit for it to initialize
  sleep 2
  
  # fetch public url via local API (uses jq for JSON parsing)
  NGROK_URL=$(curl -s http://127.0.0.1:4040/api/tunnels | jq -r '.tunnels[0].public_url')
  
  echo "Public URL: $NGROK_URL"
  ```
If you don’t have `jq`, you can use grep/sed but jq is more robust.

<h2></h2>

### 7. ) Troubleshooting (common issues + fixes)
- `ngrok: unknown command authtoken` — you likely have an older/newer CLI binary mismatch. Use `ngrok config add-authtoken <TOKEN>` (current v3 usage). If you see different behavior, update ngrok to the latest release. 
- **No public URL** in `http://127.0.0.1:4040/api/tunnels` — ngrok may not have started yet, or you started a `tcp` tunnel on a free account (free plan supports HTTP(S) but not arbitrary TCP). Use `ngrok http <port>` for free HTTP tunnels.
- **Authtoken not accepted / “not valid”** — re-copy the token from the dashboard and run `ngrok config add-authtoken <token> `again. Make sure you’re not accidentally adding extra whitespace. 
- **Permissions (Windows)** — open terminal as admin when adding token or installing.

<h2></h2>

### 8. ) Helpful commands / checks
- Show ngrok version:
  ```bash
  ngrok version
  ```
- Show config location:
  ```bash
  ngrok config check
  ```
- Edit config file (v3):
  ```bash
  ngrok config edit
  ```
- List tunnels (via API):
  ```bash
  curl -s http://127.0.0.1:4040/api/tunnels | jq
  ```
(Install `jq` with `sudo apt install jq` or `brew install jq`)

<h2></h2>

### 9. ) Minimal end-to-end example (paste into a script)
```bash
#!/bin/bash
# start local server
python3 -m http.server 3333 &

# start ngrok
ngrok http 3333 > /dev/null 2>&1 &

sleep 3

URL=$(curl -s http://127.0.0.1:4040/api/tunnels | jq -r '.tunnels[0].public_url')
echo "Your public URL is: $URL"
```

---

### Sources / further reading
- ngrok docs: add your authtoken with `ngrok config add-authtoken`. [See docs](https://ngrok.com/docs/agent?utm_source=chatgpt.com)
- Quickstart & agent guide (how to start tunnels). [See docs](https://ngrok.com/docs/getting-started?utm_source=chatgpt.com)
- Agent config v3 (config file location & `ngrok config check)`. [See docs](https://ngrok.com/docs/agent/config/v3?utm_source=chatgpt.com)

---
