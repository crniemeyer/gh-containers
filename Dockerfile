FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.vyxyzah.mongodb.net
ENV MONGODB_USERNAME crniemeyer
ENV MONGODB_PASSWORD xG32o8GQiq7NIKtn

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]