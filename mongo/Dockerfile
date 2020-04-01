FROM mongo:latest

COPY init/* /data/init/

VOLUME [ "/data/db", "/data/configdb" ]

CMD [ "mongod", "--port", "27087" ]

EXPOSE 27087
