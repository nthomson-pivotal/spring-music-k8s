# Spring Music k8s

This repository illustrates an example Concourse pipeline that can be used to build and deploy a Spring Boot 
(the spring-music sample application) to Kubernetes.

![pipeline](https://raw.githubusercontent.com/nthomson-pivotal/spring-music-k8s/master/docs/pipeline.png)

## Run It

You'll need a Concourse instance to run this, so just `fly` the pipeline:

```
fly -t minikube set-pipeline -p spring-music -c ci/pipeline.yml -l values.yml
```

Your `values.yml` will need to look something like this:

```
docker-hub-email:    # Dockerhub email
docker-hub-username: # Dockerhub username
docker-hub-password: # Dockerhub password

kubernetes-dev-host:      # Dev Kubernetes URL
kubernetes-dev-namespace: # Dev Kubernetes namespace
kubernetes-dev-token:     # Dev Kubernetes authentication token
kubernetes-dev-ca-base64: # Dev Kubernetes CA cert (base64 encoded)

kubernetes-prod-host:      # Prod Kubernetes URL
kubernetes-prod-namespace: # Prod Kubernetes namespace
kubernetes-prod-token:     # Prod Kubernetes authentication token
kubernetes-prod-ca-base64: # Prod Kubernetes CA cert (base64 encoded)
```