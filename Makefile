NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) push

push :
	ansible-playbook deploy.yml --syntax-check --vault-password-file ~/.aws_vault_pass.txt
	ansible-playbook deploy.yml --vault-password-file ~/.aws_vault_pass.txt
