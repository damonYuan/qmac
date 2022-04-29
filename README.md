README
====

There are some problems in running the 32bits version experimental kdb+ in latest MacOS, one workaround is to play it using docker.

Dockerfile to run kdb+ in latest MacOS.

## How to use it?

```
docker/podman build -t q .
docker/podman run -it q q
```
