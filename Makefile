run-broker:
	docker-compose -f docker-compose-broker.yml up -d

run-services:
	docker-compose -f docker-compose-services.yml up -d

build-consumer:
	$(MAKE) -C consumer build-all

build-producer:
	$(MAKE) -C producer build-all

build-all: build-consumer build-producer clean-untagged-images

clean-untagged-images:
	@IMAGES=$$(docker images | grep "^<none>" | awk '{print $$3}') && \
        if [ -n "$$IMAGES" ]; then \
	   echo 'removing images' && \
           docker rmi $$IMAGES; \
        fi
	
build-run-all: build-all run

stop-broker:
	docker-compose -f docker-compose-broker.yml down

stop-services:
	docker-compose -f docker-compose-services.yml down

stop-all: stop-services stop-broker

logs-broker:
	docker-compose -f docker-compose-broker.yml logs -f 

logs-services:
	docker-compose -f docker-compose-services.yml logs -f

