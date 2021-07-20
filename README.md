# gitops

Currently to apply to a cluster

1) Log into cluster
2) Go to the openshift-gitops/overlay you wish to apply
3) kustomize build . | oc apply -f -
4) At present this needs running twice, the first time applys the operator, 2nd time will apply the manifests that use the operator applied apis.