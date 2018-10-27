FROM jenkins/jenkins:alpine

#USER root
#RUN apt-get update && apt-get install -y ruby make more-thing-here
## drop back to the regular jenkins user - good practice
#USER jenkins

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt



