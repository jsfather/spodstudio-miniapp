FROM node:22-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY /app/.next/standalone ./
COPY /app/public ./public
COPY /app/.next/static ./.next/static

RUN npm run build

EXPOSE 3001

CMD ["node", "server.js"]