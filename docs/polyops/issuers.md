
### issuers

```yaml
# default settings

issuers:
- name: 
  email:
  selfsigned:
  http:
    ingress:
  aws:
    region:
    access_key:
    secret_key:
```

```yaml
# explanations

issuers:
- name: an arbitrary name
  email: the email that used with LetsEncrypt
  selfsigned: set to "enabled" to create a selfsigned certificate
  http:
    ingress: set to an IngressClass to create a certificate using an HTTP challenge
  aws:
    region: set to the AWS region to create a certificate using an AWS DNS challenge
    access_key: the AWS access key id with the needed Route53 permissions 
    secret_key: the AWS secret access key with the needed Route53 permissions 
```
