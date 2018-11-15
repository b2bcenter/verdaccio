from node:10-alpine
RUN apk add --no-cache g++ gcc libgcc libstdc++ linux-headers make python && \
    npm config set unsafe-perm true && npm i -g verdaccio && npm i -g sinopia-crowd && \
    apk del g++ gcc linux-headers make python

ENTRYPOINT ["verdaccio"]
