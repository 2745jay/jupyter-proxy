# Pull base image.
FROM nginx

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/*

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define configurations.
COPY ssl/ /etc/ssl/
COPY nginx.conf /etc/nginx/nginx.conf

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx", "-g", "daemon off;"]

# Expose ports.
EXPOSE 80 443
