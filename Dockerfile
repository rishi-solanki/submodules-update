FROM ubuntu
RUN apt-get update; apt-get install git -y
COPY submodules-update.sh .
CMD bash submodules-update.sh
