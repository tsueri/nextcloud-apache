FROM nextcloud:31.0.2-fpm

RUN apt update && apt upgrade -y && apt install  smbclient libsmbclient-dev -y && pecl install smbclient && docker-php-ext-enable smbclient && rm -rf /var/lib/apt/lists/*
