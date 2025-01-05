
### certificates

```yaml
# default settings

certs:
- name: 
  issuer:
    name:
    type:
  annotations:
  urls:
```

```yaml
# explanations

certs:
- name: an arbitrary name
  issuer:
    name: name of the cert-manager issuer to use
    type: set to "cluster" for a ClusterIssuer, otherwise, it looks for an Issuer
  annotations: map of annotations to add to the secret containing the certificate
  urls: an array of domains to create the certificate for
```
