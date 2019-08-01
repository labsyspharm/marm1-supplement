## Usage instructions

### Jupyter notebook viewer

```
docker run -p 8888:8888 labsyspharm/marm1-supplement
``` 

### Command line access

```
docker run --entrypoint /bin/bash -i -t labsyspharm/marm1-supplement
``` 

## Rebuilding the container

```
docker build -t labsyspharm/marm1-supplement https://github.com/labsyspharm/marm1-supplement.git
```
