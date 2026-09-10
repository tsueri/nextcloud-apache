FROM localhost/nextcloud-apache:34.0.4

RUN apt update && apt upgrade -y && apt install poppler-utils smbclient libsmbclient-dev -y && pecl install smbclient && docker-php-ext-enable smbclient && rm -rf /var/lib/apt/lists/*
