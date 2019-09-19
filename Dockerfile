FROM node:lts-alpine

WORKDIR /app

ADD yarn.lock yarn.lock

RUN apk update && \
    npm install -g yarn && \
    yarn install

CMD ["yarn", "serve"]