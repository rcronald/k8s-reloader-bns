FROM nginx:alpine
LABEL maintainer="rcronald@gmail.com"

# Eliminar el archivo de configuracion de NGINX por defecto
RUN rm -v /etc/nginx/conf.d/default.conf

# Copiar el archivo de configuracion de NGINX
ADD nginx-web.conf /etc/nginx/conf.d/default.conf

# Add bootstrap.sh file
ADD bootstrap.sh /usr/bin/bootstrap.sh
RUN chmod +x /usr/bin/bootstrap.sh

# Copiar el bundle generado a la ruta publica del NGINX
ADD ./app /usr/share/nginx/html

EXPOSE 80

# Iniciar el servicio de NGINX
CMD ["bootstrap.sh"]