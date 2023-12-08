FROM node:lts-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY --chown=node:node package*.json .
COPY --chown=node:node /data ./data

RUN npm install

USER node

CMD ["npm","run","start:dev"]