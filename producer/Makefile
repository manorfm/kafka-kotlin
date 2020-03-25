clean:
	rimraf build/

build-gradle:
	gradle build

build-container:
	docker build . -t manorfm/producer

build-all: clean build-gradle build-container
