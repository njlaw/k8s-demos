#!/bin/bash

# Launching in Kubernetes

# If you have not already done so, set your kubectl context (@see m1-intro.sh)

# Create a pod definition
code pod.yaml

# Deploy it
kubectl apply -f pod.yaml

