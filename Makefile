NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) production

production :
	ansible-playbook production.yml --syntax-check --vault-password-file ~/.aws_vault_pass.txt
	ansible-playbook production.yml --vault-password-file ~/.aws_vault_pass.txt

vagrant :
	vagrant up
	ansible-playbook vagrant.yml --syntax-check
	ansible-playbook vagrant.yml