FROM ubuntu:16.04
COPY frontend-example-docker-master .
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y node.js
RUN node -v && npm -v
RUN npm install
EXPOSE 5000
ENV API_URL=http://localhost:3009
CMD npm start