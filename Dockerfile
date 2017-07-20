from debian

RUN apt-get update


RUN apt-get install -y wget sudo

RUN wget https://raw.githubusercontent.com/milq/milq/master/scripts/bash/install-opencv.sh

RUN bash install-opencv.sh


RUN useradd --user-group --create-home --shell /bin/false app


ENV HOME=/home/app

USER app