FROM arhea/flightaware-base:stretch

COPY ./build.sh /usr/flightaware/build.sh
RUN /usr/flightaware/build.sh

COPY ./start.sh /usr/flightaware/start.sh

# Update your lat/lon values.
ENV PIAWARE_LAT="" PIAWARE_LON=""

EXPOSE 30002 30003 30004 30005 30104

ENTRYPOINT []
CMD ["/usr/flightaware/start.sh"]
