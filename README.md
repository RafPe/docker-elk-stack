# ELK stack within docker containers
This repo contains ready to use environment which consists of the following elements:

* Nginx reverse proxy
* Elasticsearch basic 1 node cluster - as this is more educational than production ready
* Customized image of Logstash with beats and trtanslate plugins installed
* Es-Kopf which is is a simple web administration tool

## Out of the box
Just out of the box if you run the docker compose it will then create all required containers and required networks. Since this is not designed for production I have done some tweaks which you might want to customize before starting this up

### Logging:
limited the logging drivers file size and roll over by using the following parts of compose file

```yaml
logging:
  driver: json-file
  options:
    max-size: "50m"
    max-file: "3"
    labels: "kibana"
```

If you think you would need more then you are more than welcome to play with the values.

### Elasticsearch data persistence:
As for most of development tasks I do not use persistent data if you would like to have this for Elasticsearch cluster you will have to change the following line in compose file by specyfing where to store the data

```yaml
volumes:
   # - ${PWD}/elasticsearch/data:/usr/share/elasticsearch/data

```

### Logstash configuration:
By default logstash will use **demo-logstash.conf** which is configured just with beats input and some filtering applied. Once completed data will be sent to elasticsearch

## Running the solution:
Execute the following in the folder where you want the files to be downloaded to
```shell
git clone https://github.com/RafPe/docker-elk-stack.git
```
Once cloned you just need to run:
```shell
docker-compose up -d
```
### Logstash customizations:
If you would like to further customize your logstash you may do so by just adding extra config files present in logstash folders.You will find there extra files for input / filtering / and outputs.


## Versions:
Below you may find versions of this repo so if necessary you can refer to a specific point of time when deploying by using i.e

```shell
git checkout tags/v2.0.0
```

* v2.0.0 - Initial release of ELK stack for compose v2
