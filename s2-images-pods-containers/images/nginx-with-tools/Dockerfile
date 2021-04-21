FROM ubuntu-with-tools
RUN apt-get install -y nginx
# nginx is intentionally misspelled to show how layers are cached in the build process
CMD [ "/usr/sbin/nginz", "-g", "daemon off;" ]
EXPOSE 80
