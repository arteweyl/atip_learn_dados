FROM httpd:2.4
COPY ./curriculo/ /usr/local/apache2/htdocs/
EXPOSE 80