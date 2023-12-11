#!/bin/bash
										                                #CHANGE
KN_GC_CONF_NAME="knative" # Name of your configuration for gcloud                                               **O**
KN_GC_AUTH_PATH="./authorization/service-account.json" # Path to your service-account-credentials               **R**
KN_GC_PROJ_NAME="test-cloud-native-project" # Name of your project                                              **R**
KN_GC_CLUSTER_NAME="native-cluster" # Name of your cluster                                                      **R**
KN_GC_CLUSTER_ZONE="us-central1-c" # Zone of your cluster                                                       **R**
KN_DEFAULT_DOMAIN_SUFFIX="nativehello.com" # Default domain suffix that will present in every service subdomain **R**

f_enable_bold="\033[1m"
f_disable_bold="\033[0m"

f_yellow="\033[33m"
f_green="\033[32m"
f_disable_color="\033[0m"
