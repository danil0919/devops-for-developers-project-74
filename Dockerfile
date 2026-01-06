FROM node:20.12.2-alpine3.19

WORKDIR /app


RUN apk add --no-cache \
  python3 \
  make \
  g++ \
  gcc \
  musl-dev \
  sqlite-dev 

# сначала только манифесты — для кеша
COPY app/package*.json ./
RUN npm ci


COPY app .

EXPOSE 8080
ENV NODE_ENV=development

CMD ["make", "dev"]