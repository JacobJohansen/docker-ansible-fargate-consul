NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) production

production :
	ansible-playbook deploy-prod.yml --syntax-check --vault-password-file ~/.aws_vault_pass.txt
	ansible-playbook deploy-prod.yml --vault-password-file ~/.aws_vault_pass.txt

travis :
	ansible-playbook --syntax-check deploy-*.yml
	ansible-lint -v deploy-*.yml
	ansible-playbook deploy-testing.yml

vagrant :
	vagrant up
	ansible-playbook vagrant.yml --syntax-check
	ansible-playbook vagrant.yml