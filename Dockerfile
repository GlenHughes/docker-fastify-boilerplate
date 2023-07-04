FROM node:16.3.0-alpine

WORKDIR /var/app

COPY package.json ./
COPY yarn.lock ./

COPY src/ src/

RUN yarn && yarn bundle

COPY dist/ .
