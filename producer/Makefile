clean:
	rimraf build/

build: clean
	gradle build
	docker build . -t manorfm/producer
