FROM node:18

WORKDIR /app

COPY package.json yarn.lock ./

COPY . .

RUN yarn global add prisma 

RUN yarn && yarn db:migrate && yarn build

EXPOSE 3333

CMD ["yarn", "start:all"]

