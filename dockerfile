FROM node:17-alpine3.14

WORKDIR /sandbox/test

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

CMD ["npm", "start"]

EXPOSE 4000
