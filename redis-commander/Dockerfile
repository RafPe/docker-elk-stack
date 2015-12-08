FROM node:0.12.2
MAINTAINER Lukasz Guminski <lukasz.guminski@container-solutions.com>

RUN curl -L https://github.com/joeferner/redis-commander/tarball/v0.3.2 | tar zx
RUN npm install -g redis-commander

ENTRYPOINT [ "redis-commander" ] 
CMD [ "--redis-host", "redis" ]

EXPOSE 8081
