# spike on tailing logs

```sh
docker build . -t logging-sidecar
docker run -v $(pwd):/code -it logging-sidecar:latest bash
```