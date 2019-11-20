FROM node:11-alpine

WORKDIR /app
COPY . .

ENV NODE_ENV=production

RUN yarn install
RUN yarn build

EXPOSE 3010

CMD ["yarn", "start"]

