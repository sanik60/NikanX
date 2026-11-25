# nikanx.com on Cloud Run: the static site served by nginx.
FROM nginx:1.27-alpine
COPY deploy/nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html styles.css robots.txt sitemap.xml /usr/share/nginx/html/
COPY favicon.ico favicon.svg favicon-48.png apple-touch-icon.png icon-512.png og-image.png /usr/share/nginx/html/
COPY de/ /usr/share/nginx/html/de/
