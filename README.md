# Codelex modules - Docker

## Week 1, homework 1

### Building images

Base image

``docker build -t <IMAGE-NAME>:<IMAGE-TAG> -f base.dockerfile .``

Bonus image

``docker build -t <IMAGE-NAME>:<IMAGE-TAG> -f bonus.dockerfile .``

Running container

``docker run --name <CONTAINER-NAME> <IMAGE-NAME>:<IMAGE-TAG>``

Alternatively can be pulled & run from dockerhub repo

``docker run --name <CONTAINER-NAME> vladislavspoznaks/docker-week-one-homework-one-base:homework``

``docker run --name <CONTAINER-NAME> vladislavspoznaks/docker-week-one-homework-one-bonus:homework``

For base image available optional language parameter

``docker run --name <CONTAINER-NAME> vladislavspoznaks/docker-week-one-homework-one-base:homework -p<LANG-CODE>``

For bonus image available ENV parameter HEALTH_CHECK (default value - 0 for healthy status, 1 for unhealthy status)

``docker run --ENV HEALTH_CHECK=1 --name <CONTAINER-NAME> vladislavspoznaks/docker-week-one-homework-one-base:homework``

### Questions

 - For passing additional CLI arguments with ENTRYPOINT for bonus image - there are two commands, but first one needs additional argument.
How to sneak in the argument to first command?

 - For VOLUME, succeeded only by binding volume on running container, but for this, VOLUME in dockerfile is not necessary. 
How to handle this correctly?

``docker run --volume <HOST-PATH>:<CONTAINER-PATH>> --name <CONTAINER-NAME> vladislavspoznaks/docker-week-one-homework-one-base:homework``
