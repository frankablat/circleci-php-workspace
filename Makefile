all:build

build:
	docker build -t mirzat/circleci-php-workspace .

run:build
	docker run -d --name mirzat_php_workspace mirzat/circleci-php-workspace

clean:
	docker container rm mirzat_php_workspace -f

push:
	docker push mirzat/circleci-php-workspace

bash:
	docker exec -it mirzat_php_workspace bash