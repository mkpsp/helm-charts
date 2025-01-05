
# Polyops

Polyops is a Helm chart for deploying a variety of one off operations specific resources.

## Prerequisites

- Kubernetes 1.16+
- Helm 3+

## Get Repo

```console
helm repo add mkpsp https://mkpsp.github.io/helm-charts
helm repo update
```

## Usage

### sample values file

A simple Polyops values file looks like this (what a dev would store in their app repo):

```yaml
configs:
- name: env
  data:
    ENV: "production"

rbac:
- type: cluster
  rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "watch", "list"]

secrets:
- name: auth
  data:
    TOKEN: "xyz123"
```

## Configuration

- [configs](../../docs/configs.md)
- [rbac](../../docs/configs.md)
- [sa](../../docs/sa.md)
- [secrets](../../docs/secrets.md)
