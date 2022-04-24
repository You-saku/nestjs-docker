FROM node:16.13.1-alpine
RUN yarn global add pkg

WORKDIR /api
COPY package.json /api/package.json
COPY yarn.lock /api/yarn.lock
RUN yarn install

COPY . /api
