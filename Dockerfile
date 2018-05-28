FROM mhart/alpine-node:6.14.2

RUN apk update && apk upgrade && apk add --no-cache git

RUN npm install frontail@4.2.0 --global

ADD wait-for.sh frontail-preset.json /

RUN chmod +x /wait-for.sh

VOLUME /log
ENTRYPOINT ["frontail"]
EXPOSE 9001
CMD ["--help"]
