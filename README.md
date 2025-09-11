# k8s_tutorial

This repository contains Helm charts for deploying services via ArgoCD.

## Charts

- [msa-project-be](msa-project-be): Backend service Helm chart using ConfigMap, SealedSecret, Deployment, Service, and Ingress.

## Deployment

An Argo CD `Application` manifest is provided in `application.yaml` for deploying the `msa-project-be` chart.

Apply it with:

```bash
kubectl apply -f application-be.yaml
```