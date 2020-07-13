#!/bin/bash

sudo kubectl create deployment dummy --image=quaternioneer/thesis:A
sudo kubectl port-forward deployment/dummy 8000:80
