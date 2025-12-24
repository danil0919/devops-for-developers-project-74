FROM node:20.12.2-alpine3.19

# RUN apk add --no-cache make
# RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python

RUN apk add --no-cache \
  python3 \
  make \
  g++ \
  gcc \
  musl-dev \
  sqlite-dev 


WORKDIR /app

# сначала только манифесты — для кеша
COPY app/package*.json ./
RUN npm ci


COPY app .

CMD ["make", "test"]