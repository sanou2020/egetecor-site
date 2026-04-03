FROM nginx:stable-alpine

COPY egetecor.html /usr/share/nginx/html/index.html
COPY *.jpg /usr/share/nginx/html/
COPY *.png /usr/share/nginx/html/
COPY *.webp /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
