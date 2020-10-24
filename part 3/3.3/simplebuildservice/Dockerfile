FROM ubuntu:16.04 
RUN apt-get update -y && apt-get install -y git apt-transport-https ca-certificates curl gnupg-agent software-properties-common && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
RUN apt-get update --fix-missing -y && apt-get install -y docker-ce-cli
COPY sbs.sh .  
#RUN chmod +x /bin/sbs.sh
WORKDIR /
ENTRYPOINT ["./sbs.sh"] 
