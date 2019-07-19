# Spring Music k8s

This repository illustrates an example Concourse pipeline that can be used to build and deploy a Spring Boot 
(the spring-music sample application) to Kubernetes.

![pipeline](https://raw.githubusercontent.com/nthomson-pivotal/spring-music-k8s/master/docs/pipeline.png)

## Run It

You'll need a Concourse instance to run this, so just `fly` the pipeline:

```
fly -t minikube set-pipeline -p spring-music -c ci/pipeline.yml -l values.yml
```

See `values-sample.yml` for an example configuration.