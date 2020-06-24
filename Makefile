.PHONY: build start reset configure

JENKINS_VERSION=2.241

build:
	docker-compose build --build-arg JENKINS_VERSION=$(JENKINS_VERSION)

start: build
	docker-compose up -d

reset: 
	docker-compose down
	rm -fr ./data
	start

configure:
	@cp ./configuration/jenkins.yml ./data/jenkins.yml
	@echo "Configuration file copied, you can now reload existing configuration on Jenkins interface (administrate Jenkins > configuration as code)"