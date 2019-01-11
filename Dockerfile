FROM nginx:stable-alpine

# Update Nginx config to allow heroku port configuration at runtime
COPY default.conf.template /etc/nginx/conf.d/default.conf.template
COPY nginx.conf /etc/nginx/nginx.conf

# Copy landing page to docker image
COPY landing/ /usr/share/nginx/html/

# Copy CV in PDF to docker image
COPY ["_build/Ignacio_Glinsek-CV.pdf", "/usr/share/nginx/html/Ignacio_Glinsek-CV.pdf"]

CMD /bin/sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'