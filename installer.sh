#!/bin/bash
source ./config/config.sh
source ./utils/0001_util.sh

gcloud config configurations create $KN_GC_CONF_NAME
gcloud auth login --cred-file=$KN_GC_AUTH_PATH
gcloud config set project $KN_GC_PROJ_NAME
gcloud container clusters get-credentials $KN_GC_CLUSTER_NAME --region=$KN_GC_CLUSTER_ZONE

checkAuth

kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.12.2/serving-crds.yaml
kubectl apply -f https://github.com/knative/serving/releases/download/knative-v1.12.2/serving-core.yaml
kubectl apply -f https://github.com/knative/net-kourier/releases/download/knative-v1.12.1/kourier.yaml
kubectl patch configmap/config-network --namespace knative-serving --type merge --patch '{"data":{"ingress-class":"kourier.ingress.networking.knative.dev"}}'
kubectl patch configmap/config-domain --namespace knative-serving --type merge --patch '{"data":{"'"${KN_DEFAULT_DOMAIN_SUFFIX}"'":""}}'
