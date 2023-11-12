# Use the official NGINX image
FROM nginx

# Remove the default NGINX configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration
COPY data-seed.formulachain.com.conf /etc/nginx/conf.d/data-seed.formulachain.com.conf

