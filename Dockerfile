FROM node:10.13.0-alpine

# Create app directory
WORKDIR /app/
VOLUME /app

COPY package.json ./

COPY yarn.lock ./

RUN cd /app
RUN yarn install --frozen-lockfile --production

# copy app files
COPY . ./

# run application
CMD ["node", "/app/index.js"]
