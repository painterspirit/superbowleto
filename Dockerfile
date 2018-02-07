FROM node:8.9-alpine

ARG NPM_ARGS

RUN addgroup -S players && \
    adduser -S quarterback -G players

ENV HOME /home/quarterback

COPY package.json $HOME/superbowleto/package.json
COPY package-lock.json $HOME/superbowleto/package-lock.json

WORKDIR $HOME/superbowleto

RUN npm install $NPM_ARGS

COPY src $HOME/superbowleto/src

EXPOSE 3000

USER quarterback
