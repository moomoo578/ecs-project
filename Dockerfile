FROM node:20-alpine

WORKDIR /app
COPY package.json .
RUN yarn install

COPY . .

RUN yarn build

RUN yarn global add serve

CMD ["serve", "-s", "build", "-l", "3000"]