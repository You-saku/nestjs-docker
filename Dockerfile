FROM node:16.13.1-alpine
WORKDIR /api
RUN yarn global add pkg
RUN yarn global add @nestjs/cli

COPY package.json yarn.lock /api/
RUN yarn install

COPY . .

CMD ["yarn", "run", "start:dev"]
