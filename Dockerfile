FROM node:8

WORKDIR /app
COPY . .
RUN yarn --network-concurrency 1
RUN yarn task build:server:binary
