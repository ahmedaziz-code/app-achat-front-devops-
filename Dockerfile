FROM nginx:1.17.1-alpine
COPY /nginx.conf /etc/nginx/nginx.conf
COPY /dist/crudtuto-Front /usr/share/nginx/html
CMD ["/bin/sh",  "-c",  "envsubst < /usr/share/nginx/html/assets/env.template.js > /usr/share/nginx/html/assets/env.js && exec nginx -g 'daemon off;'"]
EXPOSE 4200