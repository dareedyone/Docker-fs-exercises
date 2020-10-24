FROM ubuntu:16.04
RUN apt-get update 
RUN apt-get install -y curl 
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs
RUN node -v && npm -v
COPY phonebook-app usr/src/phonebook-app
WORKDIR usr/src/phonebook-app
EXPOSE 3001
CMD ["/bin/bash"]
 