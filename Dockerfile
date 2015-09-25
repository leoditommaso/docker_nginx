FROM ubuntu:14.04

MAINTAINER Leandro Di Tommaso <leandro.ditommaso@mikroways.net>

# Packages to install on the container.
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update && apt-get install -y --force-yes \
    nginx

# Copy configuration file.
COPY nginx.conf /etc/nginx/nginx.conf

# Expose Nginx ports.
EXPOSE 80
EXPOSE 443

# Run Nginx in foreground.
CMD  [ "/usr/sbin/nginx" ]
