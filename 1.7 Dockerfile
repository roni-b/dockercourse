FROM ubuntu

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y curl

COPY website.sh .

CMD ./website.sh
