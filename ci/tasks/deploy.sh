#!/bin/bash

set -e

mkdir -p /root/.kube

ca_path="/root/.kube/ca.pem"

echo "$cluster_ca" | base64 -d > $ca_path

kubectl config set-cluster default --server=$cluster_url --certificate-authority=$ca_path

kubectl get pods