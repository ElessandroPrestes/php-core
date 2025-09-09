FROM php:8.3-fpm

# Instala dependências essenciais
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpng-dev \
    libjpeg-dev \
    libonig-dev \
    libxml2-dev \
    unzip \
    zip \
    curl \
    git \
    libzip-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libicu-dev \
    nano \
    libmagickwand-dev \
    libfreetype6-dev \
    default-mysql-client \
    netcat-openbsd \
    bash && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Configura e instala extensões PHP
RUN docker-php-ext-configure zip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install \
        pdo \
        pdo_mysql \
        mbstring \
        exif \
        pcntl \
        bcmath \
        gd \
        zip

# Instala Redis e Xdebug via PECL
RUN pecl install redis xdebug && \
    docker-php-ext-enable redis xdebug

# Instala Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Copia configuração do PHP
COPY php.ini /usr/local/etc/php/php.ini

# Define diretório de trabalho
WORKDIR /var/www

# Copia código da aplicação
COPY . .

# Aplica permissões de leitura e escrita
RUN chown -R www-data:www-data /var/www && \
    chmod -R 775 /var/www && \
    chmod -R 775 storage bootstrap/cache || true && \
    chown -R www-data:www-data storage bootstrap/cache || true
