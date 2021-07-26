# gitops

Currently to apply to a cluster

1) Log into cluster
2) Checkout this repo
3) In the checked out repo, go to the openshift-gitops/overlay you wish to apply
4) kustomize build . | oc apply -f - OR oc apply -k .

