docker ps
docker ps -a #Exibe todos os containers

#Rodar com terminal interativo, mantem o stdin ativo, t = tty
docker run -it ubuntu bash
#só que o bash fica atachado ao terminal

#Startar e Parar um container
docker start / docker stop

#Rodar o container e matar ele ao sair
docker run -it --rm ubuntu:latest bash

####Nginx
docker run nginx
#Export porta
docker run --name nginx -p 8080:80 -d nginx:latest
#O d não é de daemon, e sim detached

### Remover um container
docker rm -f id

#Bind mount
docker run -d --name nginx -p 8080:80 -v /home/gmaas/dev/fullcycle-rocketseat/fullcycle/docker/html:/usr/share/nginx/html nginx:latest
docker run -d --name nginx2 -p 8181:80 --mount type=bind,source="$(pwd)"/html,target=/usr/share/nginx/html nginx:latest
#-v cria pasta se não existir

#Volumes
docker volume create volumeteste
docker run --name nginx -d --mount type=volume,source=volumeteste,target=/app nginx:latest
docker run --name nginx3 -d -v volumeteste:/app nginx:latest
docker volume prune

#Images
docker build -t gmaas2/nginx-com-vim:latest .
docker run -it gmaas2/nginx-vim:latest bash