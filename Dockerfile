FROM debian:latest  

ENV USER=developer

RUN apt-get update -y && \
    apt-get install -y \
      curl \
      vim \ 
      make

RUN useradd -m -s /bin/bash ${USER} && \
    usermod --gid users ${USER} 

USER ${USER}
WORKDIR /home/${USER}

