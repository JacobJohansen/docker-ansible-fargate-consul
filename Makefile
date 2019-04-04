# FORMAT: perl -pi -e 's/^  */\t/' Makefile

clean :
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker network prune -f
