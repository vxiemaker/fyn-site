# FYN site - static files served by nginx.
# Build:  docker build -t fyn-site .
# Run:    docker run -d -p 8080:80 --name fyn fyn-site
# Open:   http://localhost:8080
FROM nginx:alpine

# gzip the text assets so the page (about 1 MB, mostly embedded images) loads fast
RUN printf '%s\n' \
  'gzip on;' \
  'gzip_comp_level 6;' \
  'gzip_min_length 1024;' \
  'gzip_types text/plain text/css application/javascript application/xml image/svg+xml;' \
  > /etc/nginx/conf.d/gzip.conf

COPY index.html /usr/share/nginx/html/
COPY icon.png og.jpg robots.txt sitemap.xml /usr/share/nginx/html/
COPY gram/ /usr/share/nginx/html/gram/

EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s \
  CMD wget -q --spider http://localhost/ || exit 1
