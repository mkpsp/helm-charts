
### certificates

```yaml
# default settings

certs:
- name: 
  issuer:
    name:
    type:
  urls:
```

```yaml
# explanations

certs:
- name: an arbitrary name
  issuer:
    name: name of the cert-manager issuer to use
    type: set to "cluster" for a ClusterIssuer, otherwise, it looks for an Issuer
  urls: an array of domains to create the certificate for
```
