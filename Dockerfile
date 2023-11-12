# Dockerfile

# Use the official NGINX image
FROM nginx

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration and setup entrypoint script
COPY data-seed.formulachain.com.conf /etc/nginx/conf.d/data-seed.formulachain.com.conf
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Grant execute permissions to the entrypoint script
RUN chmod +x /docker-entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 80
