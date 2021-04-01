#!/bin/bash

clusterExist=$(eksctl get cluster | grep JenkinsCluster)
var_length=${#clusterExist}

echo ${var_length}

if [ 60<1 ]
	then
	echo 'launching cluster'
	eksctl create cluster \
	--name JenkinsCluster \
	--region eu-west-2 \
	--nodegroup-name DemoNodes \
	--nodes 2 \
	--nodes-min 2 \
	--nodes-max 3 \
	--node-type t2.micro \
	--with-oidc \
	--ssh-access \
	--ssh-public-key TerraformPair \
	--managed
fi
