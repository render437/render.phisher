FROM ubuntu:latest
LABEL MAINTAINER="https://github.com/render437/render.phisher"
WORKDIR /app  # Corrected: Set the working directory to /app
COPY . /app/   # Corrected: Copy files to /app
RUN apt-get update && apt-get install -y bash ncurses curl unzip wget php  # Corrected: Using apt-get
RUN chmod +x /app/render.phisher.sh  # Corrected: Make the script executable
CMD ["/app/render.phisher.sh"]    # Corrected: Use absolute path
