# Based on Blockstream's esplora project

FROM node:13-alpine

RUN mkdir -p /srv/faucet

COPY ./ /srv/faucet

WORKDIR /srv/faucet

SHELL ["/bin/ash", "-c"]

# required to run some scripts as root (needed for docker)
RUN npm config set unsafe-perm true \
 && npm install

ENV FAUCET_NAME="Signet Faucet"

COPY config.example.js config.js

EXPOSE 8123

CMD ["./index.js"]
