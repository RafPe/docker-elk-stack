FROM logstash:2
MAINTAINER RafPE
RUN /opt/logstash/bin/logstash-plugin install logstash-filter-translate && \
    /opt/logstash/bin/logstash-plugin install logstash-input-beats && \
    mkdir /geoip && \
    curl -o /geoip/GeoLiteCity.dat.gz  -O "http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz" && \
    gunzip /geoip/GeoLiteCity.dat.gz && \
    curl -o /geoip/GeoIPASNum.dat.gz -O "http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz" && \
    gunzip /geoip/GeoIPASNum.dat.gz
