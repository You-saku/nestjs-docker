FROM node:16.13.1-alpine
RUN yarn global add pkg

WORKDIR /api
COPY package.json yarn.lock /api/
RUN yarn install

COPY . .
