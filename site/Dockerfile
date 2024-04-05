FROM node:latest

RUN mkdir -p /usr/src/app/

WORKDIR /usr/src/app/

COPY package.json /usr/src/app/package.json
RUN cd /usr/src/app/
RUN yarn


COPY . /usr/src/app/

EXPOSE 3000
# CMD npm start