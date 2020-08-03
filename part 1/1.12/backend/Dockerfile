FROM ubuntu:16.04
COPY backend-example-docker-master .
RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y node.js
RUN npm install
EXPOSE 8000
ENV FRONT_URL=http://localhost:3003
CMD npm start

