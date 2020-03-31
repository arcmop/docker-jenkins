FROM jenkins/jenkins:latest

USER root
RUN apt-get -y update && apt-get install -y maven git

USER jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

