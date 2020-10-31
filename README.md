# SMALT

A Phoenix clone of [TLAMS](https://github.com/aChinKaiWu/tlams).

## Development

### Start development Server

1. Start development server with `docker-compose`:

``` sh
$ docker-compose up -d
```

2. Setup database and migrations:

``` sh
$ docker-compose exec api mix setup
```

3. Visit [http://localhost:4000/](http://localhost:4000/)

4. Start development server with interactive mode:

``` sh
# Make sure you have stopped containers.
$ docker-compose stop

$ docker-compose run -p 4000:4000 --rm api
```

### Run tests

``` sh
$ docker-compose exec api mix test
```
