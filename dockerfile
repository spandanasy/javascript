FROM node:19-alpine

COPY package.json /app/
COPY sample.js /app/

WORKDIR /app

RUN npm install

RUN apk update && \
    apk add --no-cache git && \
    git clone https://github.com/username/repository.git cloned-repo

CMD ["node", "sample.js"]

