FROM nginx:stable-alpine

LABEL org.opencontainers.image.authors="Novoseltcev Stanislav <novoseltcev.stanislav@gmail.com>"

WORKDIR /etc/nginx
RUN rm -rf conf.d
COPY ./ ./

RUN nginx -t
