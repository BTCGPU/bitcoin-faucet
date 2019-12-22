#!/bin/bash

HOST_IP=127.0.0.1

cp config.example.js config.js

FAUCET_NAME="Bitcoin Gold Testent Faucet" \
BITCOIND_HOST="${HOST_IP}" \
BITCOIND_PORT="18339" \
BITCOIND_USER="RPC_USER" \
BITCOIND_PASS="RPC_PASSWORD" \
MONGODB_HOST="${HOST_IP}" \
DEBUG_ALLOW_DIRECT_ACCESS="false" \
FAUCET_HOUR_MAX="10" \
FAUCET_DAY_MAX="100" \
FAUCET_MIN="10" \
  node index.js

rm config.js