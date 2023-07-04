FROM node:16.3.0-alpine

WORKDIR /var/app/server

COPY routes/ routes/
COPY server.js .
COPY package.json .
COPY yarn.lock .

RUN yarn

CMD ["yarn", "start"]

EXPOSE 3000