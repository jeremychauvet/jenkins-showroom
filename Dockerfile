ARG JENKINS_VERSION
FROM jenkins/jenkins:${JENKINS_VERSION}-slim
# Set environment variable for configuration as code plugin.
ENV CASC_JENKINS_CONFIG=$JENKINS_HOME/casc_configs
# Install plugins.
COPY configuration/plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN install-plugins.sh < /usr/share/jenkins/ref/plugins.txt