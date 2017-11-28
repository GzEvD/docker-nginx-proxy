# docker-nginx-proxy by GzEvD mbH.

Setup the jwilder/nginx-proxy docker-compose container with a Shell script.

### Usage

```
./start.sh
```

If you use the proxy for other docker containers you may want to add those lines to your docker-compose.yml.
For more informations please visit the [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) repo.

```
version: '2.1'
services:
  web:
    image: reinblau/lamp:5.6
    volumes:
      - ./src:/var/www/html
    restart: always
    ports:
      - "80"
    networks:
      - proxy_front
    environment:
      VIRTUAL_HOST: example.dd
networks:
  proxy_front:
    external: true
```
