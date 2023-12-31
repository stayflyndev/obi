# syntax=docker/dockerfile:1

FROM node:18-alpine
WORKDIR /app
COPY . .
COPY package*.json ./
RUN yarn install --production
CMD npm run dev
EXPOSE 3000