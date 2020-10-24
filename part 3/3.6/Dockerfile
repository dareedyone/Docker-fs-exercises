FROM node:14-alpine as build-stage
WORKDIR /usr/app
COPY frontend-example-docker-master .
RUN npm install
RUN npm run build

FROM node:14-alpine
RUN npm install -g serve
COPY --from=build-stage /usr/app/dist /usr/app/dist
WORKDIR /usr/app/
CMD serve -s -l 5000 dist  
