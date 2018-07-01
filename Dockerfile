FROM lsiobase/alpine.nginx:3.7

LABEL maintainer="siku2"

RUN \
 echo "**** install packages ****" && \
 apk add --no-cache \
	curl \
	imagemagick \
	mc \
	php7-curl \
	php7-exif \
	php7-gd \
	php7-imagick \
	php7-mbstring \
	php7-mysqli \
	php7-mysqlnd \
	php7-zip \
	re2c

# add files
COPY ./ /usr/share/webapps/lychee
COPY .docker/root /

# ports and volumes
EXPOSE 80
VOLUME /config /pictures