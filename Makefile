SHELL := /bin/bash

docker:
	docker build --tag emshugo/emshugo -f Dockerfile .

container:
	docker run --detach --interactive --name emshugoserver --volume ./:/workspace/ emshugo/emshugo:latest /bin/bash

server:
	hugo server -D .