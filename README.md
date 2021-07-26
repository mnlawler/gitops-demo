# gitops

Currently to apply to a cluster

1) Log into cluster
2) Checkout this repo
3) In the checked out repo, go to the openshift-gitops/overlay you wish to apply
4) kustomize build . | oc apply -f -

This will install required RBAC for gitops, the CRD to allow for the app project and app set to be deployed ahead of the operator, and the operator itself.
Once the operator has finished installing it will start provision the repo as per the defintion in the application set, as the auto sync is enabled.


