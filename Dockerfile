FROM nginx:alpine

COPY /my-portfolio-web /usr/share/nginx/html

EXPOSE 3000