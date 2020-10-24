FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y node.js && rm -rf /var/lib/apt/lists/* && npm install
COPY frontend-example-docker-master .
EXPOSE 5000
CMD npm start