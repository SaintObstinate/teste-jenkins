FROM node

WORKDIR /usr/teste-jenkins

COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000