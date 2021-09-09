# Project-2-Docker-Kubernetes-Container-Project

- Create a customized Docker container from the current version of Python that deploys a python application
- Push image to Amazon ECR
- Pull image down and run it on a cloud platform cloud shell: AWS Cloud9.
- Deploy an application to managed Kubernetes cluster

## Build the Container Yourself and Push to Docker Hub

### Build image
*(If you want to develop yourself)* 
docker build -t project_2 .

### List docker images
docker image ls

### Run my newly built container

docker run -d --name project_container -p 80:80 project_2

### Push to Docker Hub

*Note:  You will need to change for your Docker Hub Repo*
docker push noahgift/duke102:tagname

## Run it yourself

```bash
docker pull noahgift/cloudapp:latest
docker run -it noahgift/cloudapp bash 

#then run python app.py --help
```

## Pass in a command

```bash
docker run -it noahgift/cloudapp python app.py --name "Big John"
#the output
Hello Big John!
```

## Push to Amazon ECR

1.  Create ECR repository


### More things Do

* Lint the code with Github Actions (see the Makefile)
* Automatically build the container after lint, and push to DockerHub or some other Container Registery
