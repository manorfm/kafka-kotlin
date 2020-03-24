run:
	docker-compose up -d

build-consumer:
	$(MAKE) -C consumer build

build-producer:
	$(MAKE) -C producer build

build: build-consumer build-producer clean-untagged-images

clean-untagged-images:
	docker rmi $$(docker images | grep "^<none>" | awk '{print $$3}')
	
build-run: build run


