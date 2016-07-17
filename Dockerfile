FROM cmptech/auto_alpine_php7_runtime_with_swoole

Maintainer Wanjo Chan ( http://github.com/wanjochan/ )

RUN echo "http://nl.alpinelinux.org/alpine/latest-stable/main" > /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/testing/" >> /etc/apk/repositories \
&& echo "http://nl.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories \
&& echo "nameserver 8.8.8.8" >> /etc/resolv.conf && apk update && apk upgrade \
&& apk add php7-fpm

RUN apk --update add \
php7-dom \
php7-curl \
php7-gd \
php7-json \
php7-mbstring \
php7-mysqlnd \
php7-opcache \
php7-pdo \
php7-pdo_mysql \
php7-session \
php7-xml \
wget curl bash openssl \
&& rm -rf /var/cache/ \
&& rm -rf /tmp/*

COPY php.ini /etc/php7/conf.d/50-setting.ini
COPY php-fpm.conf /etc/php7/php-fpm.conf

EXPOSE 9000

#use build.sh to get a fresh-built
#ADD swoole.so /usr/lib/php7/modules/
#ADD php.ini /etc/php7/

CMD ["php-fpm7", "-F"]
