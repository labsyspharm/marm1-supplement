## Usage instructions

### Jupyter notebook

```
docker run -p 8888:8888 labsyspharm/marm1-supplement
``` 

### Command line

```
docker run --entrypoint /bin/bash -i -t labsyspharm/marm1-supplement
``` 

## Rebuilding the container

```
docker build https://github.com/labsyspharm/marm1-supplement.git
```
