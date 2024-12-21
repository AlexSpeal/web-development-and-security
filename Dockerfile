FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bash

COPY script.sh /usr/local/bin/script.sh

ENTRYPOINT ["/usr/local/bin/script.sh"]
