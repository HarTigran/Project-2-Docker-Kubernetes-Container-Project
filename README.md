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
docker images

### Run my newly built container

docker run --publish 8080:8080 proj_2
