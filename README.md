# gitops

## Applying to Cluster

1) Log into cluster
2) Checkout this repo
3) Locally go to the openshift-gitops/overlay you wish to apply
4) kustomize build . | oc apply -f -

This will install required RBAC for gitops, the CRD to allow for the app project and app set to be deployed ahead of the operator, and the operator itself.
Once the operator has finished installing it will start provision the repo as per the defintion in the application set, as the auto sync is enabled.


## Useful Information

### Sync Waves
Sync waves allow for manifests to be defined as happening in certain orders. Pre/Post Hooks, or just ordered waves during deployment.
For more information see: https://argoproj.github.io/argo-cd/user-guide/sync-waves/

### Application Sets
As used in the openshift-gitops config in this repostiory, application sets act as meta config allowing Application definitions to be generated from git repositories in a standardized fashion.
This reduces the need to hand roll large amounts of configuration when theres a standard directory structure/overlay structure in place.

In this repository examples of application sets using kustomize overlays can be found:
- openshift-gitops/base/instance/400-application-set.yaml

Overlays patching the appset to ensure the same overlay is used once deployed:
- openshift-gitops/overlay/dev/kustomization.yaml
- openshift-gitops/overlay/test/kustomization.yaml

For more information see: https://argocd-applicationset.readthedocs.io/en/stable/

### Other documentation

A great repository for reference examples of a substantial number of base operators:
https://github.com/redhat-canada-gitops/catalog

RedHat Openshift 4.7 GitOps Documentation:
https://access.redhat.com/documentation/en-us/openshift_container_platform/4.7/html/cicd/gitops

Kustomzie Documentation:
https://kubernetes-sigs.github.io/kustomize/




