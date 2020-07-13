#!/bin/bash

kubectl create deployment dummy --image=quaternioneer/thesis:A
kubectl port-forward deployment/dummy 8000:80
