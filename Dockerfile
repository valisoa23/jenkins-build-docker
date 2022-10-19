FROM nginx:latest
RUN sed -i 's/nginx/valisoa/g' /usr/share/nginx/html.html
EXPOSE 80

Dockerfile (END)
