FROM node:18
WORKDIR /app
copy package.json ./
copy /app ./app

RUN npm install

EXPOSE 3000

CMD["npm", "start"]
