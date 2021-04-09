FROM ubuntu:18.04

ENV LC_ALL=C.UTF-8

RUN dpkg --add-architecture i386 && \
    apt-get update && \
 	  echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections && \
	  apt-get install -y ttf-mscorefonts-installer wine-stable && \
	  rm -rf /var/lib/apt/lists/*

COPY eac3to334 /app/eac3to
ADD bin/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]