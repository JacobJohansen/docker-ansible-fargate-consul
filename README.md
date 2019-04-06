# HA Consul cluster
distributed over at least 3 availability zones
eu-west-1a, eu-west-1b, eu-west-1c

## How to run local
```
vagrant up
vagrant docker-exec consul-1 -- consul info # verify
vagrant docker-exec -it consul-1 -- sh  # shell
```

## Hot to prepare production
```
pip install boto3
make push
```


#### Encrypt 
```
pip install boto3
make push
```