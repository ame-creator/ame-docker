FROM mongo:latest

COPY init/* /init/

VOLUME [ "/data/db", "/data/configdb" ]

CMD [ "mongod" ]

EXPOSE 27087
