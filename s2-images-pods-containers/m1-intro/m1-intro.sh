#!/bin/bash

# Make sure we're pointing to the local Kubernetes cluster
kubectl config get-contexts

# Set our context
kubectl config use-context docker-desktop

# Open another Ubuntu window and start watching the Kubernetes event log
kubectl get events --watch

# Deploy our nginx demo
kubectl apply -f nginx-deployment.yaml

# Check events in other window

# Verify service
kubectl get svc -o wide

# Access page
http://localhost:<node port>

# Scale

# Clean up
kubectl delete -f nginx-deployment.yaml
