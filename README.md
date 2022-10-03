## Docker Training - 2022-10-3

### Check installation
```
docker version
```

### First container
```
docker run -i -t  debian
> exit
```

### Listing containers

- docker ps : only runing
- docker ps -a : all runing/exited
- docker ps -l : only last one
- docker ps -n X: last X
- docker ps -q : print ID only

### Restart dead container
```
docker rename 27 debil
dockert start debil
```

jump back inside
```
docker attach debil
```

### Install apps inside container

```
apt-get update -qq
apt-get install -y proc-ps curl nginx
```

### Create custom image from container

```
docker commit debil kurl
```

### List Images

```
docker images
```

## Dockerfile 

...


## Aliases

```
alias dexl='docker exec -it $(docker ps -ql)'
alias dll='docker logs $(docker ps -ql)'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dpsl='docker ps -l'
alias drm='docker rm -f  $(docker ps -qa)'
alias drml='docker rm -f $(docker ps -ql)'
```