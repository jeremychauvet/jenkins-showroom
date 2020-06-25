# Purpose
TODO

# How to install
At project root, launch the following command : `make start`

This will :
1. Download official Jenkins image set in Makefile (`JENKINS_VERSION`)
2. Add plugins you choose to install.
3. Launch container and map volume and ports.

> On first launch, you'll be ask to unlock Jenkins and eventually create the first admin user. 

# How to add plugins
In Dockerfile, we use Cloudbee recommanded way to install plugin : `install-plugins.sh`

You can add plugin id you want after the plugins already given. Then, launch command `make build` to build image and get and output like this : 

```bash 
jchauvet@macbookpro jenkins-showroom % make build            
docker-compose build --build-arg JENKINS_VERSION=2.241
WARNING: The JENKINS_VERSION variable is not set. Defaulting to a blank string.
Building jenkins
Step 1/3 : ARG JENKINS_VERSION
Step 2/3 : FROM jenkins/jenkins:${JENKINS_VERSION}-slim
2.241-slim: Pulling from jenkins/jenkins
8559a31e96f4: Pull complete
[...]
f68157dad2ff: Pull complete
Digest: sha256:6703e16ae762c51b6d132844fdf08a87e80967c17de8b592a5ee69a429d5804c
Status: Downloaded newer image for jenkins/jenkins:2.241-slim
 ---> 7e8fd2b0fe5e
Step 3/3 : RUN install-plugins.sh dark-theme configuration-as-code
 ---> Running in e0f5131b530e
Creating initial locks...
Analyzing war /usr/share/jenkins/jenkins.war...
Registering preinstalled plugins...
Downloading plugins...
Downloading plugin: dark-theme from https://updates.jenkins.io/download/plugins/dark-theme/latest/dark-theme.hpi
Downloading plugin: configuration-as-code from https://updates.jenkins.io/download/plugins/configuration-as-code/latest/configuration-as-code.hpi
 > dark-theme depends on theme-manager:0.1
Downloading plugin: theme-manager from https://updates.jenkins.io/download/plugins/theme-manager/latest/theme-manager.hpi
 > configuration-as-code depends on snakeyaml-api:1.26.1
Downloading plugin: snakeyaml-api from https://updates.jenkins.io/download/plugins/snakeyaml-api/latest/snakeyaml-api.hpi

WAR bundled plugins:


Installed plugins:
configuration-as-code:1.41
dark-theme:0.0.3
snakeyaml-api:1.26.4
theme-manager:0.1
Cleaning up locks
Removing intermediate container e0f5131b530e
 ---> 5864c87171fa

Successfully built 5864c87171fa
Successfully tagged jenkins:showroom
```

# How to upgrade Jenkins version
In Makefile, please change `JENKINS_VERSION` value to the desired.

# Jenkins pros & cons
## Pros
TODO
## Cons
TODO

# Recommandations
## Plugins
TODO
## Audits
TODO
## Updates
TODO

# Repository roadmap
Please check item "project" on github.

## Configuration as code
Read more [here](./docs/casc/configuration-as-code.md)

# Usefull links
- Jenkins changelog : https://www.jenkins.io/changelog/
- Jenkins roadmap : https://www.jenkins.io/project/roadmap/
- Docker image : https://hub.docker.com/r/jenkins/jenkins/tags

Readme update : 06/24/20