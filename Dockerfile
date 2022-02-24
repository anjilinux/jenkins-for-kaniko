FROM jenkins/jenkins:lts-jdk11

USER root
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install
RUN apt-get update && apt-get install jq -y && apt-get install gettext-base -y

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY job-config.xml /usr/share/jenkins/ref/jobs/kaniko-example/config.xml
USER jenkins