# Simple k8s backup
Simple backup YAML files from Kubernetes.

Backup YAML files with lists: nodes, namespaces, deployments, replicasets, daemonsets, statefulsets, pods, services, serviceentry, virtualservice, endpoints, pv, pvc, sc, configmaps and secrets.

Backup YAML files with configurations: nodes, deployments, replicasets, daemonsets, statefulsets, pods, services, serviceentry, virtualservice, endpoints, pv, pvc, sc, configmaps and secrets.

Then the files are archived in .zip.
Add this script to a cron that runs daily.
