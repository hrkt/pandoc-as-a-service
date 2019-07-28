# pandoc-as-a-service

## It does...

pandoc-as-a-service executes the command with options specified in the url, with STDIN from HTTP request body, and returns STDOUT in HTTP response body.

## It does not...

- authenticate request
- limit rate

## future work

see GitHub project : https://github.com/hrkt/command-as-a-service/projects

# How to run

1. execute server.

```
$ docker run -p 8080:8080 hrkt/pandoc-as-a-service
```

2. make HTTP POST request

```
$ curl "http://localhost:8080/usr/bin/pandoc?-f&markdown&-t&html" --dat-binary @testdata/sample.md
```

# dev how-to

## build container

```
$ make build-container
```

## run container

```
$ make run-container
```

# License
MIT

