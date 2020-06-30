.PHONY: build start reset configure

JENKINS_VERSION=2.242

build:
	docker-compose build --build-arg JENKINS_VERSION=$(JENKINS_VERSION)

start: build 
	docker-compose up -d

reset: 
	docker-compose down
	rm -fr ./data
	start

configure:
	# Create Jenkins configuration folder and copy configuration into.
	@mkdir -p ./data/casc_configs
	@cp ./configuration/*.yml ./data/casc_configs
	@find ./configuration -iname "*.yml" -exec cp -- "{}" ./data/casc_configs \;
	# Restart Jenkins to load configuration.
	docker-compose restart jenkins || true
	@echo "Configuration file copied, you can now reload existing configuration on Jenkins interface (administrate Jenkins > configuration as code)"
	