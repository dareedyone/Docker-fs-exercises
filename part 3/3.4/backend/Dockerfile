FROM ubuntu:16.04
RUN apt update && apt install -y curl && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt install -y node.js && apt-get purge -y --auto-remove curl && \ 
rm -rf /var/lib/apt/lists/* && useradd -m app
WORKDIR /app 
RUN chown app "$(pwd)" 
USER app
COPY backend-example-docker-master .
RUN npm install
EXPOSE 8000
ENV FRONT_URL=http://localhost:3003
CMD npm start

