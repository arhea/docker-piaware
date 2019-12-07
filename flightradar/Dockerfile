FROM raspbian/stretch:latest

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y iputils-ping dirmngr \
    && gpg --keyserver pgp.mit.edu --recv-keys 40C430F5 \
    && gpg --armor --export 40C430F5 | apt-key add -

 RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && grep -v flightradar24 /etc/apt/sources.list.bak > /etc/apt/sources.list \
    && echo 'deb http://repo.feed.flightradar24.com flightradar24 raspberrypi-stable' >> /etc/apt/sources.list

RUN apt-get update -y && apt-get install -y --no-install-recommends fr24feed

COPY ./start.sh start.sh
RUN chmod +x start.sh

EXPOSE 8754

ENV DUMP1090_HOST="" DUMP1090_PORT="" FR24_KEY=""

CMD ["/start.sh"]
