FROM nginx:stable-alpine

WORKDIR /usr/share/nginx/html

COPY egetecor.html ./index.html
COPY *.jpg ./
COPY *.png ./
COPY *.webp ./

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
