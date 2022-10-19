FROM nginx:latest
RUN sed -i 's/nginx/valisoa/g' /usr/share/nginx/html/index.html
EXPOSE 80


