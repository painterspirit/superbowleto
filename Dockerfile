FROM node:8.9-alpine

ARG NPM_ARGS

ENV HOME /home

COPY package.json $HOME/superbowleto/package.json
COPY package-lock.json $HOME/superbowleto/package-lock.json

WORKDIR $HOME/superbowleto

RUN npm install $NPM_ARGS

COPY . $HOME/superbowleto/src

EXPOSE 3000
