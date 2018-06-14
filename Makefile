all:build

build:
	docker build -t mirzat/circle-ci-workspace .
run:build
	docker run mirzat/circle-ci-workspace
push:
	dockder push mirzat/circle-ci-workspace