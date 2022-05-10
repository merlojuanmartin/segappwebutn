FROM wordpress:4.7-php5.6-apache
MAINTAINER Juan Merlo <merlojuanmartin@gmail.com>

# Instalar paquetes
RUN apt update
RUN apt install nmap net-tools mysql-client vim less -y
