# multi-arch-docker
Multi arch docker with go

- Requires BuildKit (`docker buildx create --use`)
- For my own personal use only (learning docker multi-arch), if you use this be warned there'll probably be bugs!

To build locally (single arch)…
```shell
docker buildx build --load --platform linux/amd64 --progress plain --nocache -t mad:bxamd .
docker run --rm --platform=linux/amd64 mad:bxamd
```

To build multi-arch and push to docker hub…
```shell
docker buildx build --push --platform linux/amd64,linux/arm64/v8 -t missjessjenkins/mad:latest .
docker run --rm --platform=linux/arm64 missjessjenkins/mad
```

To see the result, see [the associated docker hub repo](https://hub.docker.com/r/missjessjenkins/mad). 