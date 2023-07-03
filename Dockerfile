FROM alpine:3.18.2

RUN apk --no-cache add yarn

WORKDIR /var/app

COPY package.json ./
COPY yarn.lock ./

COPY src/ src/

RUN yarn && yarn bundle

COPY dist/ .

COPY server/ server/
RUN cd server && yarn

CMD ["yarn", "start"]

EXPOSE 3000
