# docker

## Building images
```
docker build -t somename .
```

## Temporarily run as a different user (e.g. force root for experimenting)
```
docker run -it --user 0 some/container /bin/sh
```

## Override the entrypoint (sometimes needed when you want to just get a shell)
```
docker run -it --entrypoint /bin/sh some/container
```

## Build one target in multistage build
```
docker build . --target=build-env
```

## Setting up a swarm
docker swarm init
docker swam join --token <the-token> 10.12.1.14:2377

## Misc swarm stuff
docker service create --replicas 1 --name helloworld alpine ping docker.com
docker service inspect --pretty helloworld
docker service ps helloworld
docker service scale helloworld=5
docker service rm helloworld

docker service create --replicas 3 --name redis --update-delay 10s redis:3.0.6
docker service update --image redis:3.0.7 redis
docker service update redis

docker node update --availability drain worker1
docker node update --availability active node1
docker service create --name my-web --publish published=8080,target=80 --replicas 2 nginx
docker service update --publish-add published=<PUBLISHED-PORT>,target=<CONTAINER-PORT> <SERVICE>
docker service inspect --format="{{json .Endpoint.Spec.Ports}}" <SERVICE>
docker service create --name dns-cache --publish published=53,target=53 --publish published=53,target=53,protocol=udp dns-cache

docker service create --name myservice --mode global alpine top
--reserve-memory
--reserve-cpu
--constraint node.labels.region==east
--placement-pref 'spread=node.labels.datacenter'

docker service create --mount src=<VOLUME-NAME>,dst=<CONTAINER-PATH> --name myservice <IMAGE>

docker node ls

## Traefik
docker service create --name traefik --constraint=node.role==manager --publish 80:80 --publish 8080:8080 --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock --network mynet traefik --docker --docker.swarmMode --docker.domain=traefik --docker.watch --api
docker service create --name whoami0 --label traefik.port=80 --network mynet containous/whoami
