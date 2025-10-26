FROM node:22.21.0
WORKDIR /app
ENTRYPOINT ["npm", "start"]
ADD config /app/config
ADD package* /app
RUN npm install --omit-dev
ADD src /app/src
