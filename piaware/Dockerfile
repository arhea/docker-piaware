FROM arhea/flightaware-base

ENV DEBIAN_FRONTEND=noninteractive

COPY ./build.sh /usr/flightaware/build.sh
RUN /usr/flightaware/build.sh

COPY ./start.sh /usr/flightaware/start.sh

ENV PIAWARE_HOST="" PIAWARE_PORT="" PIAWARE_FEEDER_ID="" PIAWARE_MLAT_PORT=""

EXPOSE 8080
EXPOSE 30003

ENTRYPOINT []
CMD ["/usr/flightaware/start.sh"]
