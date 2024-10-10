# Use official PHP 8.0-FPM image as base
FROM php:8.0-fpm

# Install necessary dependencies for Phalcon, Swoole, and Composer
RUN apt-get update && apt-get install -y \
    libbrotli-dev \
    libssl-dev \
    pkg-config \
    zlib1g-dev \
    git \
    unzip \
    && pecl install swoole \
    && docker-php-ext-enable

# Install Composer globally
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy application code
COPY . .

# Run Composer to install dependencies without dev packages and optimize autoloader
RUN composer install --no-dev --optimize-autoloader

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM service
CMD ["php-fpm"]