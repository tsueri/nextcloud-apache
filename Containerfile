FROM localhost/nextcloud-apache:33.0.9

RUN apt update && apt upgrade -y && apt install poppler-utils smbclient libsmbclient-dev -y && pecl install smbclient && docker-php-ext-enable smbclient && rm -rf /var/lib/apt/lists/*
