FROM nginx:stable-alpine

# Créer le répertoire et copier tous les fichiers
RUN mkdir -p /usr/share/nginx/html
COPY . /usr/share/nginx/html/

# Renommer le fichier HTML en index.html
RUN mv /usr/share/nginx/html/egetecor.html /usr/share/nginx/html/index.html

# Copier la config nginx
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
