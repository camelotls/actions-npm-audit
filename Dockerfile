FROM node:12.9.0

WORKDIR /

ENV ACTION_NAME='./actions-npm-audit/'

COPY index.js .
COPY utils/ ./utils
COPY package.json .
COPY package-lock.json .

RUN npm install

ENTRYPOINT ["node", "/index.js"]
