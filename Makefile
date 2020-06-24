.PHONY: start reset configure

start:
	docker-compose up -d --build

reset: 
	docker-compose down
	rm -fr ./data
	docker-compose up -d --build

configure:
	@cp ./configuration/jenkins.yml ./data/jenkins.yml
	@echo "Configuration file copied, you can now reload existing configuration on Jenkins interface (administrate Jenkins > configuration as code)"