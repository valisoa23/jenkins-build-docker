FROM nginx:latest
RUN sed -i 's/nginx/valisoa/g' /usr/share/nginx/index.html
EXPOSE 80


