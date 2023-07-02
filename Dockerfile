FROM alpine:3.18.2

# NOTE: nodejs 16.13.0
RUN apk --no-cache add nodejs yarn --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

WORKDIR /var/app

COPY package.json ./
COPY yarn.lock ./

COPY src/ src/

RUN yarn

COPY server/ server/
RUN cd server && yarn

CMD ["yarn", "start"]

EXPOSE 3000
