FROM ubuntu
RUN apt-get update; apt-get install git -y
COPY subdmoules-update.sh .
CMD bash submodules-update.sh
