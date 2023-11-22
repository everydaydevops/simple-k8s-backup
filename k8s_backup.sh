#!/bin/bash

#DEV - kubernetes claster name for developers

DEV_DEST="/storage/k8s_backup/dev" 
DEV_KEY="/storage/k8s_backup/.script/config-dev.json" #cluster key
FDATE="$(date +%Y-%m-%d)"

#For telegram notification
#TOKEN="############"
#CHAT_ID="############"
#BOT_DATE="$(date '+%A %d-%B, %Y')"

mkdir $DEV_DEST/$FDATE
cd $DEV_DEST/$DATE

KUBECONFIG=$DEV_KEY kubectl get nodes --all-namespaces -o wide > list_nodes.yaml
KUBECONFIG=$DEV_KEY kubectl get all --all-namespaces -o wide > list_all.yaml
KUBECONFIG=$DEV_KEY kubectl get namespaces --all-namespaces > list_namespaces.yaml
KUBECONFIG=$DEV_KEY kubectl get deployments --all-namespaces -o wide > list_deployments.yaml
KUBECONFIG=$DEV_KEY kubectl get rs --all-namespaces -o wide > list_replicasets.yaml
KUBECONFIG=$DEV_KEY kubectl get ds --all-namespaces -o wide > list_daemonsets.yaml
KUBECONFIG=$DEV_KEY kubectl get sts --all-namespaces -o wide > list_statefulsets.yaml
KUBECONFIG=$DEV_KEY kubectl get pods --all-namespaces -o wide > list_pods.yaml
KUBECONFIG=$DEV_KEY kubectl get services --all-namespaces -o wide > list_services.yaml
KUBECONFIG=$DEV_KEY kubectl get serviceentry --all-namespaces -o wide > list_serviceentry.yaml
KUBECONFIG=$DEV_KEY kubectl get virtualservice --all-namespaces -o wide > list_virtualservice.yaml
KUBECONFIG=$DEV_KEY kubectl get endpoints --all-namespaces -o wide > list_endpoints.yaml
KUBECONFIG=$DEV_KEY kubectl get pv --all-namespaces -o wide > list_pv.yaml
KUBECONFIG=$DEV_KEY kubectl get pvc --all-namespaces -o wide > list_pvc.yaml
KUBECONFIG=$DEV_KEY kubectl get sc --all-namespaces -o wide > list_sc.yaml
KUBECONFIG=$DEV_KEY kubectl get configmap --all-namespaces -o wide > list_configmaps.yaml
KUBECONFIG=$DEV_KEY kubectl get secrets --all-namespaces -o wide > list_secrets.yaml

KUBECONFIG=$DEV_KEY kubectl get nodes --all-namespaces -o yaml > configs_nodes.yaml
KUBECONFIG=$DEV_KEY kubectl get deployments --all-namespaces -o yaml > configs_deployments.yaml
KUBECONFIG=$DEV_KEY kubectl get rs --all-namespaces -o yaml > configs_replicasets.yaml
KUBECONFIG=$DEV_KEY kubectl get ds --all-namespaces -o yaml > configs_daemonsets.yaml
KUBECONFIG=$DEV_KEY kubectl get sts --all-namespaces -o yaml > configs_statefulsets.yaml
KUBECONFIG=$DEV_KEY kubectl get pods --all-namespaces -o yaml > configs_pods.yaml
KUBECONFIG=$DEV_KEY kubectl get services --all-namespaces -o yaml > configs_services.yaml
KUBECONFIG=$DEV_KEY kubectl get serviceentry --all-namespaces -o yaml > configs_serviceentry.yaml
KUBECONFIG=$DEV_KEY kubectl get virtualservice --all-namespaces -o yaml > configs_virtualservice.yaml
KUBECONFIG=$DEV_KEY kubectl get endpoints --all-namespaces -o yaml > configs_endpoints.yaml
KUBECONFIG=$DEV_KEY kubectl get pv --all-namespaces -o yaml > configs_pv.yaml
KUBECONFIG=$DEV_KEY kubectl get pvc --all-namespaces -o yaml > configs_pvc.yaml
KUBECONFIG=$DEV_KEY kubectl get sc --all-namespaces -o yaml > configs_sc.yaml
KUBECONFIG=$DEV_KEY kubectl get configmap --all-namespaces -o yaml > configs_configmaps.yaml
KUBECONFIG=$DEV_KEY kubectl get secrets --all-namespaces -o yaml > configs_secrets.yaml

cd $DEV_DEST
zip -9 dev_$FDATE.zip $FDATE/* && rm -R $FDATE #&&
#curl -s -X POST https://api.telegram.org/bot$TOKEN/sendMessage -d chat_id=$CHAT_ID -d text="Backup K8s DEV on $BOT_DATE was successful!" > /dev/null
