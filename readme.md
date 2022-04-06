# A Dockerized PHP app on top of Openshift 4

Create a very simple hello world PHP app, containerized it, and deploy it into Openshift 4.

## Build and Push to Docker Hub from Openshift 4
```
$ oc new-build --strategy docker --binary --name=containerized-hello-world-php 

$ oc start-build containerized-hello-world-php  --from-dir=. --follow --wait
```

## Deploy to OpenShift 4
```
$ oc new-app containerized-hello-world-php  --name=containerized-hello-world-php 
```

## Expose a Secure URL for this PHP app
```
$ oc create route edge --service=containerized-hello-world-php 
```

## PHP Code
Sample PHP code are taken from below repository.
```
https://github.com/banago/simple-php-website
```