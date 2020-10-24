FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y node.js && apt-get purge -y --auto-remove curl && \ 
rm -rf /var/lib/apt/lists/* && useradd -m app
WORKDIR /app
RUN chown app "$(pwd)" 
USER app
COPY frontend-example-docker-master .
RUN npm install
EXPOSE 5000
ENV API_URL=http://localhost:3009
CMD npm start