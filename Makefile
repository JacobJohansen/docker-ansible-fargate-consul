NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) production

production :
	$(MAKE) testing
	ansible-playbook deploy-prod.yml

travis :
	$(MAKE) testing
	ansible-playbook deploy-testing.yml

vagrant :
	vagrant up
	ansible-playbook deploy-vagrant.yml --syntax-check
	ansible-playbook deploy-vagrant.yml

testing:
	ansible-playbook --syntax-check deploy-*.yml
	ansible-lint -v deploy-*.yml