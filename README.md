# HashiCorp Consul on AWS ECS FARGATE HA Cluster
distributed over at least 3 availability zones
eu-west-1a, eu-west-1b, eu-west-1c

[![Build Status](https://travis-ci.org/reiser/docker-ansible-fargate-consul.svg?branch=master)](https://travis-ci.org/reiser/docker-ansible-fargate-consul)

<img src="https://raw.githubusercontent.com/reiser/docker-ansible-fargate-consul/master/.architecture/architecture.svg?sanitize=true">

## How to run local
```
make vagrant
vagrant docker-exec consul-1 -- consul info # verify
vagrant docker-exec -it consul-1 -- sh  # shell
```

## How to run in production
```
pip install boto3
pip install boto
make production

Ensure in AWS to opt-in new clusters to support tags on tasks, outdiscovery will not work without
```

## How to encrypt credentials
```
echo "aws_access_key: XXXX" > group_vars/aws
echo "aws_secret_key: XXXX" >> group_vars/aws
ansible-vault encrypt group_vars/aws
echo "yourpassword" > ~/.aws_vault_pass.txt
```
