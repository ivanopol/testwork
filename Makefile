docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:perm
	docker-compose up --build -d

perm:
	sudo chgrp -R www-data storage bootstrap/cache
	sudo chmod -R ug+rwx storage bootstrap/cache

unperm:
	sudo chown -R ivanopol:ivanopol ./storage/docker/mysql
