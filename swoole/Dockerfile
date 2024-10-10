# Use the official PHP image as a base
FROM php:8.0-cli

# Install necessary packages
RUN apt-get update && apt-get install -y \
    libzip-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libbrotli-dev \
    gcc \
    make \
    unzip \
    && docker-php-ext-install zip

# Install Swoole extension
RUN pecl install swoole \
    && docker-php-ext-enable swoole

# Set the working directory
WORKDIR /var/www

# Copy the server.php file into the container
COPY swoole/server.php .

# Expose port 9501 for Swoole
EXPOSE 9501

# Start the Swoole server
CMD ["php", "server.php"]