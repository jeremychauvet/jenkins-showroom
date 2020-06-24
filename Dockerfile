ARG JENKINS_VERSION
FROM jenkins/jenkins:${JENKINS_VERSION}-slim
COPY configuration/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN install-plugins.sh < /usr/share/jenkins/ref/plugins.txt