FROM node:22.21.0
WORKDIR /app
ENTRYPOINT ["npm", "start"]
COPY config /app/config
COPY package* /app
RUN npm install --omit-dev
COPY src /app/src
