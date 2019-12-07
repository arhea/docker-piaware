FROM raspbian/stretch:latest

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y wget

RUN wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.7.2_all.deb \
  && dpkg -i piaware-repository_3.7.2_all.deb \
  && apt-get update \
  && apt-get install -qy piaware \
  && sudo piaware-config allow-auto-updates no \
  && sudo piaware-config allow-manual-updates no

COPY ./start.sh start.sh
RUN chmod +x start.sh

ENV PIAWARE_HOST="" PIAWARE_PORT="" PIAWARE_FEEDER_ID=""

EXPOSE 8080
EXPOSE 30003

ENTRYPOINT []
CMD ["/start.sh"]
