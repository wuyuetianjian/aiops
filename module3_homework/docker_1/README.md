### build
```
docker build --platform linux/amd64,linux/arm64  -t test:v1 -f Dockerfile .
```
### run Description
```
docker run -p3333:3333 --rm  test:v
```