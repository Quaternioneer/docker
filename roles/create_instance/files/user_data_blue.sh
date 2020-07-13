#!/bin/bash

kubectl create deployment dummyvariable --image=quaternioneer/thesis:A
kubectl port-forward deployment/demolition 8000:80
