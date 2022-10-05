

```
docker network create traefik
docker-compose -f docker-compose-traefik.yaml  up -d
```

or set COMPOSE_FILE=docker-compose-traefik.yaml in .env
```
docker-compose  up -d
```
