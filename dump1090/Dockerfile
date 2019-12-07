FROM raspbian/stretch:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get install -y perl libreadline7 libreadline-dev

RUN wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.7.2_all.deb \
  && dpkg -i piaware-repository_3.7.2_all.deb \
  && apt-get update -y \
  && apt-get install -y dump1090-fa

COPY ./start.sh start.sh
RUN chmod +x start.sh

# Update your lat/lon values.
ENV PIAWARE_LAT="" PIAWARE_LON=""

# web overview
EXPOSE 8080
# ports for FlightAware etc
EXPOSE 30002
EXPOSE 30003
EXPOSE 30004
EXPOSE 30005
EXPOSE 30104

ENTRYPOINT []
CMD ["/start.sh"]
