
### Running Tests

A simple script named `test.sh` can be found for each helm chart under the `tests/<CHART>/` directory.

It will try to perform a dry-run helm upgrade using the specified values file, for example:

```
# this will run a dry-run helm upgrade using the default.values.yaml file
test.sh default.values.yml
```

Without specifying an argument, the test script will try every values file in the directory.
