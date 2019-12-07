FROM raspbian/stretch:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y piaware

COPY ./start.sh start.sh
RUN chmod +x start.sh

ENV PIAWARE_HOST="" PIAWARE_PORT="" PIAWARE_FEEDER_ID="" PIAWARE_MLAT_PORT=""

EXPOSE 8080
EXPOSE 30003

ENTRYPOINT []
CMD ["/start.sh"]
