# HA Consul cluster
distributed over at least 3 availability zones

## How to run local
```
vagrant up
vagrant docker-exec consul-1 -- consul info # verify
vagrant docker-exec -it consul-1 -- sh  # shell
```
