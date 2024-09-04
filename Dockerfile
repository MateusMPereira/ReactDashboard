FROM node:18-alpine

WORKDIR /home/node/web

COPY package*.json /home/node/web

RUN yarn

COPY . /home/node/web

RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
