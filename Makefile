NAME     := consul
VERSION  := latest
IMG      := ${NAME}:${VERSION}

default:
	$(MAKE) push

provision :
	ansible-playbook install.yml --limit consul-node-factory

push :
	ansible-playbook deploy.yml --syntax-check --vault-password-file ~/.aws_vault_pass.txt
	ansible-playbook deploy.yml --vault-password-file ~/.aws_vault_pass.txt
