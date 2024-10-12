# Instruções para Construir e Executar Containers

Este guia fornece instruções sobre como construir e executar um container Docker para uma aplicação Python usando Flask, juntamente com um container para o Redis.

## Pré-requisitos

- **Docker** instalado em sua máquina.

## Construindo a Imagem da Aplicação

1. Navegue até o diretório onde está a pasta raiz.
2. Execute o comando 
   ```bash
   docker container run -d --name redis-server -p 6379:6379 redis

3. Em seguida execute o comando

   ```bash
   docker build -t giropops-senhas .

4. Para rodar o container da aplicação, execute o seguinte comando
   ```bash
   docker container run -d -e REDIS_HOST=$(docker container inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' redis-server) --name giropops-senhas -p 5000:5000 giropops-senhas