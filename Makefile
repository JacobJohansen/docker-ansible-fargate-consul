NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) push

push :
	ansible-playbook infrastructure.yml --syntax-check --vault-password-file ~/.aws_vault_pass.txt
	ansible-playbook infrastructure.yml --vault-password-file ~/.aws_vault_pass.txt

vagrant :
	vagrant up
	ansible-playbook vagrant.yml --syntax-check
	ansible-playbook vagrant.yml