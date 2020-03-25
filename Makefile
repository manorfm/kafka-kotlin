run:
	docker-compose up -d

build-consumer:
	$(MAKE) -C consumer build-all

build-producer:
	$(MAKE) -C producer build-all

build: build-consumer build-producer clean-untagged-images

clean-untagged-images:
	docker rmi $$(docker images -a | grep "^<none>" | awk '{print $$3}')
	
build-run: build run

stop:
	docker-compose down

logs:
	docker-compose logs -f

build-run-logs: build-run logs
