all:build

build:
	docker build -t mirzat/circle-ci-workspace .

run:build
	docker run -d --name mirzat_php_workspace mirzat/circle-ci-workspace

clean:
	docker container rm mirzat_php_workspace -f

push:
	dockder push mirzat/circle-ci-workspace

bash:
	docker exec -it mirzat_php_workspace bash