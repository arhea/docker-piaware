FROM nginx:1.17

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y git \
    && mkdir -p /usr/src \
    && git clone https://github.com/flightaware/dump1090.git /usr/src/dump1090 \
    && cp -R /usr/src/dump1090/public_html/. /usr/share/nginx/html/

EXPOSE 8080

COPY ./piaware.conf /etc/nginx/conf.d/default.conf


