# Docker Image for Building DotOS

GitLab CI image for building DotOS

This code on repo will automatically build on Docker Hub : 

https://hub.docker.com/r/kishorv06/gitlab-ci-dotos/

## Example `.gitlab-ci.yml` file
```yml
image: kishorv06/gitlab-ci-dotos:latest

build:
  stage: build
  script:
     - . build/envsetup.sh
     - lunch dot_potter
     - brunch potter

```
