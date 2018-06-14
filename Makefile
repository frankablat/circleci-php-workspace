all:build

build:
	docker build -t mirzat/circle-ci-workspace .
run:build
	docker run -d --name mirzat_php_wprkspace mirzat/circle-ci-workspace
push:
	dockder push mirzat/circle-ci-workspace
bash:
	docker exec -it mirzat_php_wprkspace bash