
### rbac

```yaml
# default settings

rbac:
- name:
  type: 
  rules:
```

```yaml
# explanations

rbac:
- name: an arbitrary name for naming resources
  type: defaults to creating Role and Rolebinding. set to "cluster" to create ClusterRole and ClusterRoleBinding
  rules: list of rbac rules
```
