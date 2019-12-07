FROM raspbian/stretch:latest

RUN apt-get update -y && apt-get upgrade -y

RUN wget http://flightaware.com/adsb/piaware/files/packages/pool/piaware/p/piaware-support/piaware-repository_3.7.2_all.deb \
  && dpkg -i piaware-repository_3.7.2_all.deb \
  && apt-get update \
  && apt-get install -qy dump1090-fa

COPY ./start.sh start.sh
RUN chmod +x start.sh

# Update your lat/lon values.
ENV DUMP_HTTP_PORT="" DUMP_SBS_PORT="" DUMP_LAT="" DUMP_LON=""

# web overview
EXPOSE 8080
# ports for FlightAware etc
EXPOSE 30003
EXPOSE 30005
EXPOSE 30104

ENTRYPOINT []
CMD ["/start.sh"]
