.PHONY: build start stop reset configure clean

build:
	docker-compose build

start: clean configure build
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
	@mkdir -p ./data/casc_configs/jobs
	@cp ./configuration/*.yml ./data/casc_configs
	@cp ./configuration/jobs/*.groovy ./data/casc_configs/jobs/
	@find ./configuration -iname "*.yml" -exec cp -- "{}" ./data/casc_configs \;
	@echo "Configuration file copied, you can now reload existing configuration on Jenkins interface (administrate Jenkins > configuration as code)"
