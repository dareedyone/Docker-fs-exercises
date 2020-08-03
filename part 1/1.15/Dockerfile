FROM ubuntu:16.04
RUN apt update && apt install -y npm
COPY voucher-generator /usr/src/app
RUN npm install -g npx
RUN ln -s /usr/bin/nodejs /usr/bin/node
WORKDIR /usr/src/app
EXPOSE 8080
CMD npx http-server

 