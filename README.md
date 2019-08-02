## Usage instructions

### Jupyter notebook viewer

We have prepared two Jupyter Notebooks -- one that explains how MARM1 is constructed,
and one that performs example simulations of the model using our calibrated parameters.
You can preview the notebooks here:

* Model construction - [MARM1_construction.ipynb](https://github.com/labsyspharm/marm1-supplement/blob/master/resources/MARM1_construction.ipynb)
* Model simulation - [MARM1_simulation.ipynb](https://github.com/labsyspharm/marm1-supplement/blob/master/resources/MARM1_simulation.ipynb)

If you wish to interact with the notebooks, you can do so with our Docker container as follows:

```
docker run -p 8888:8888 labsyspharm/marm1-supplement
``` 

### Command line access

For advanced Python users who prefer to interact with the code using Python from a Bash shell,
the following alternate Docker command can be used:

```
docker run --entrypoint /bin/bash -i -t labsyspharm/marm1-supplement
``` 

## Rebuilding the container

The files in this Git repository are intended for the model developers, for use in building
the Docker container. Docker container *users* do not need to interact with the Git repository
at all (git pull etc.).

Docker build command:

```
docker build -t labsyspharm/marm1-supplement:latest https://github.com/labsyspharm/marm1-supplement.git
docker push labsyspharm/marm1-supplement:latest
```
