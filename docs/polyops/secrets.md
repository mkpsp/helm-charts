
### secrets

```yaml
# default settings

secrets:
- name: 
  type:
  data:
```

```yaml
# explanations

secrets:
- name: an arbitrary name
  type: default to 'Opaque' when not defined, otherwise passes the literal string to the Kubernetes secret type
  data: a map of key and values
```
