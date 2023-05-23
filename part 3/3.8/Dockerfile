FROM node:16-alpine AS build

WORKDIR /usr/src/app

COPY package* ./
RUN npm ci --only=production

COPY . .
RUN npm run build 

FROM node:16-alpine

EXPOSE 5000

RUN npm install -g serve \
    && addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]

