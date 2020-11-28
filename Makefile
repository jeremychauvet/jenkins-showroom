.PHONY: build start stop reset configure clean

JENKINS_VERSION=2.268

build:
	docker-compose build --build-arg JENKINS_VERSION=$(JENKINS_VERSION)

start: configure build
	# Clean stopped containers, old volumes.
	docker system prune -f 
	# Launch stack.
	docker-compose up -d
	docker-compose logs -ft

stop:
	docker-compose down

reset: 
	docker-compose down
	rm -fr ./data
	@echo "Docker stack and data folder wiped."

clean:
	@rm -fr ./data/casc_configs || true

configure:
	# Create Jenkins configuration folder and copy configuration into.
	@mkdir -p ./data/casc_configs
	@cp ./configuration/*.yml ./data/casc_configs
	@find ./configuration -iname "*.yml" -exec cp -- "{}" ./data/casc_configs \;
	@echo "Configuration file copied, you can now reload existing configuration on Jenkins interface (administrate Jenkins > configuration as code)"
