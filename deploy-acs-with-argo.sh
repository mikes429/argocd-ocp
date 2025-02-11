#!/bin/bash

# 
# Pre-requisites:
# 1. "oc" cli is already installed
# 2. "oc" is already logged to the cluster with a cluster-admin user
# 3. ArgoCD is installed in openshift-gitops namespace
#
# Example of Usage:
# ./deploy-acs-with-argo.sh

echo "Deploying ACS using ArgoCD..."
./argo-app-runner.sh stackrox 'https://github.com/mikes429/argocd-ocp.git' 'acs/gitops' HEAD
