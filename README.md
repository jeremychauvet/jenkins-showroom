# Purpose.
TODO

# How to install.
At project root, launch the following command : `make start`
This will :
1. Download official Jenkins image set in Dockerfile (`FROM`)
2. Add plugins you choose to install.
3. Launch container and map volume and ports.

# How to add plugins.
In Dockerfile, we use Cloudbee recommanded way to install plugin : `install-plugins.sh`
You can add plugin id you want after the plugins already given.

# Jenkins pros & cons.
## Pros
TODO
## Cons.
TODO

# Recommandations.
## Plugins.
TODO
## Audits.
TODO
## Updates.
TODO

# Repository roadmap.
Please check item "project" on github.

# Usefull links.
- Jenkins changelog : https://www.jenkins.io/changelog/
- Jenkins roadmap : https://www.jenkins.io/project/roadmap/
- Docker image : https://hub.docker.com/r/jenkins/jenkins/tags

Readme update : 06/24/20