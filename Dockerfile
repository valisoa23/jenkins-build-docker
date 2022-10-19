FROM nginx:latest
RUN apt-get update && apt-get nstall -y docker
RUN sed -i 's/nginx/valisoa/g' /usr/share/nginx/html.html
EXPOSE 80

Dockerfile (END)
