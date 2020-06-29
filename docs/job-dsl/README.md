# Job DSL.

# Installation.
First, start a Jenkins instance and search for "job-dsl" plugin on plugin manager.
Official repository : https://plugins.jenkins.io/job-dsl/

> Note: this plugin is already installed in this showroom.

# Purpose
Like CASC plugin, this one allow us to manage our Jenkins instance with code too, but in "job creation" scope. It extends CASC plugin scope.

# Create or load configuration.
Configuration file is a YAML file. You have jobs sample in folder "configuration/jobs".

# Load configuration.
Please execute the following command at project root : 
```bash
make configure
```
This action will : 
- copy configuration file from "configuration" folder at project root to ./data/casc_configs
- restart Jenkins container.

> Jenkins will only load YML files add root of ./data/casc_configs folder, without reading subfolder. Please use `make configure` step in Makefile yo copy all YML files including thoses in "jobs" subfolder at ./data/casc_configs root.

# Reference
Reference can be display with the following URL : http://localhost/plugin/job-dsl/api-viewer/index.html
