FROM node:14-alpine
RUN adduser -D app
WORKDIR /app
RUN chown app "$(pwd)" 
USER app
COPY frontend-example-docker-master .
RUN npm install
EXPOSE 5000
ENV API_URL=http://localhost:3009
CMD npm start