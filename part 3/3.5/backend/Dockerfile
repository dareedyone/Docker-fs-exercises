FROM node:14-alpine
WORKDIR /app  
RUN chown node "$(pwd)" 
USER node
COPY backend-example-docker-master .
RUN npm install
EXPOSE 8000
ENV FRONT_URL=http://localhost:3003
CMD node .
