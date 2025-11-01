ARG NODE_VERSION
FROM node:${NODE_VERSION}-alpine
WORKDIR /app
ENTRYPOINT ["npm", "start"]
COPY config /app/config
COPY package* /app
RUN npm install --omit-dev
COPY src /app/src
