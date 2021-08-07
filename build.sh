#!/bin/bash
eval $(minikube docker-env)
docker build nexusphp -t nexusphp
docker build nexusphp-mysql-init -t nexusphp-mysql-init