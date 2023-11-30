#!/bin/bash

#DEV - kubernetes claster name for developers

DEV_DEST="/storage/k8s_backup/dev" 
FDATE="$(date +%Y-%m-%d)"

mkdir $DEV_DEST/$FDATE
cd $DEV_DEST/$DATE

kubectl get nodes --all-namespaces -o wide > list_nodes.yaml
kubectl get all --all-namespaces -o wide > list_all.yaml
kubectl get namespaces --all-namespaces > list_namespaces.yaml
kubectl get deployments --all-namespaces -o wide > list_deployments.yaml
kubectl get rs --all-namespaces -o wide > list_replicasets.yaml
kubectl get ds --all-namespaces -o wide > list_daemonsets.yaml
kubectl get sts --all-namespaces -o wide > list_statefulsets.yaml
kubectl get pods --all-namespaces -o wide > list_pods.yaml
kubectl get services --all-namespaces -o wide > list_services.yaml
kubectl get serviceentry --all-namespaces -o wide > list_serviceentry.yaml
kubectl get virtualservice --all-namespaces -o wide > list_virtualservice.yaml
kubectl get endpoints --all-namespaces -o wide > list_endpoints.yaml
kubectl get pv --all-namespaces -o wide > list_pv.yaml
kubectl get pvc --all-namespaces -o wide > list_pvc.yaml
kubectl get sc --all-namespaces -o wide > list_sc.yaml
kubectl get configmap --all-namespaces -o wide > list_configmaps.yaml
kubectl get secrets --all-namespaces -o wide > list_secrets.yaml

kubectl get nodes --all-namespaces -o yaml > configs_nodes.yaml
kubectl get deployments --all-namespaces -o yaml > configs_deployments.yaml
kubectl get rs --all-namespaces -o yaml > configs_replicasets.yaml
kubectl get ds --all-namespaces -o yaml > configs_daemonsets.yaml
kubectl get sts --all-namespaces -o yaml > configs_statefulsets.yaml
kubectl get pods --all-namespaces -o yaml > configs_pods.yaml
kubectl get services --all-namespaces -o yaml > configs_services.yaml
kubectl get serviceentry --all-namespaces -o yaml > configs_serviceentry.yaml
kubectl get virtualservice --all-namespaces -o yaml > configs_virtualservice.yaml
kubectl get endpoints --all-namespaces -o yaml > configs_endpoints.yaml
kubectl get pv --all-namespaces -o yaml > configs_pv.yaml
kubectl get pvc --all-namespaces -o yaml > configs_pvc.yaml
kubectl get sc --all-namespaces -o yaml > configs_sc.yaml
kubectl get configmap --all-namespaces -o yaml > configs_configmaps.yaml
kubectl get secrets --all-namespaces -o yaml > configs_secrets.yaml

cd $DEV_DEST
zip -9 dev_$FDATE.zip $FDATE/* && rm -R $FDATE
