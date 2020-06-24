ARG JENKINS_VERSION
FROM jenkins/jenkins:${JENKINS_VERSION}-slim
RUN install-plugins.sh dark-theme configuration-as-code