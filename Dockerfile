FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . . 

ENV PORT=3000
ENV MODEL_URL=https://storage.googleapis.com/martha-mlgc-01/model_akhir/model.json

CMD ["npm","start"]