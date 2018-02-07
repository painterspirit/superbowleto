FROM node:8.9-alpine

ARG NPM_ARGS

ENV WORKDIR /superbowleto

COPY package.json $WORKDIR/package.json
COPY package-lock.json $WORKDIR/package-lock.json

WORKDIR $WORKDIR

RUN npm install $NPM_ARGS

COPY . $WORKDIR/src

EXPOSE 3000
