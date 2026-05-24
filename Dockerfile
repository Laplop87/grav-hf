FROM getgrav/grav:latest
ENV APACHE_PORT=7860
EXPOSE 7860

# Make Apache listen on 7860 and start
CMD sed -i "s/Listen 80/Listen 7860/g" /etc/apache2/ports.conf && \
    sed -i "s/<VirtualHost \*:80>/<VirtualHost \*:7860>/g" /etc/apache2/sites-available/000-default.conf && \
    apache2-foreground
