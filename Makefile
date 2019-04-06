NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) build
	#$(MAKE) provision
	#$(MAKE) clean

build :
	docker build . -t ${IMG}
	$(MAKE) run

run :
	docker run --rm --name consul-node-factory -d -p 8500:8500 -p 8600:8600 ${IMG}

provision :
	ansible-playbook install.yml --limit consul-node-factory

push :
	ansible-playbook deploy.yml --vault-password-file ~/.aws_vault_pass.txt

clean :
	docker stop $$(docker ps -aqf "name=consul-node-factory")
