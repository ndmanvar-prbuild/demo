FROM node:0.12.15-slim

RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app

COPY package.json /usr/src/app/package.json

WORKDIR /usr/src/app

RUN npm install

COPY . /usr/src/app

EXPOSE 8000

CMD ["python", "-m", "SimpleHTTPServer"]
