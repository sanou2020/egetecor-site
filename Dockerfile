FROM nginx:stable-alpine

# Copier la config nginx
RUN mkdir -p /etc/nginx/conf.d
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers
COPY egetecor.html /usr/share/nginx/html/index.html
COPY *.jpg /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.webp /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
