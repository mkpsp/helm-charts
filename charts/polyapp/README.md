
# Polyapp

Polyapp is a best practices Helm chart for greatly simplifying Kubernetes deployments.

It was designed to deploy applications from a CI/CD pipeline. 

It is also helpful for easily deploying applications that don't have an official Helm chart.

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

A simple Polyapp values file looks like this (what a dev would store in their app repo):

```yaml
variables:
- name: env
  data:
    ENV: "production"
    TOKEN: "xyz123"

containers:
- name: app
  ports:
    - containerPort: 3000
  cpu:
    request: 100m
    limit: 1000m
  memory:
    request: 256Mi
    limit: 1Gi

ingress:
- name: app
  urls:
    - app.test.site

hpa:
  min: 3
  max: 10
  cpu: 70
```

## Third-Party Features

Polyapp assumes that `cert-manager` is installed if you are provisioning ingresses. If you don't have `cert-manager` installed, you need to specify the tls secret when adding an ingress. There is no option to enable http, the ingress must be https.

## Configuration

- [default](../../docs/polyapp/default.md)
- [global](../../docs/polyapp/global.md)
- [containers](../../docs/polyapp/containers.md)
- [deploy](../../docs/polyapp/deploy.md)
- [cronjobs](../../docs/polyapp/cronjobs.md)
- [variables](../../docs/polyapp/variables.md)
- [volumes](../../docs/polyapp/volumes.md)
- [autoscaler](../../docs/polyapp/autoscaler.md)
- [distruption](../../docs/polyapp/distruption.md)
- [service](../../docs/polyapp/service.md)
- [ingress](../../docs/polyapp/ingress.md)
- [rbac](../../docs/polyapp/rbac.md)
