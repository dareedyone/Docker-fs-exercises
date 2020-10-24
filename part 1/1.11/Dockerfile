FROM ubuntu:16.04
RUN apt update && apt install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y node.js && npm install && rm -rf /var/lib/apt/lists/*
COPY backend-example-docker-master .
EXPOSE 8000
CMD npm start

