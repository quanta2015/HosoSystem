FROM node:latest

RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/

COPY package.json /usr/src/app/package.json
RUN cd /usr/src/app/
RUN npm i


COPY . /usr/src/app/
RUN mkdir -p /usr/src/app/upload/
RUN mkdir -p /usr/src/app/export/

#EXPOSE 80