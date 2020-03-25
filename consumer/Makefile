clean:
	rimraf build/

build-gradle:
	gradle build

build-container:
	docker build . -t manorfm/consumer

build-all: clean build-gradle build-container
