# SMALT

A Phoenix clone of [TLAMS](https://github.com/aChinKaiWu/tlams).

## Development

### Start development Server

1. Start development server with `docker-compose`.

``` sh
$ docker-compose up -d
```

2. Setup database and migrations.

``` sh
$ docker-compose exec api mix setup
```

3. Visit [http://localhost:4000/](http://localhost:4000/)

### Run tests

``` sh
$ docker-compose exec api mix test
```
