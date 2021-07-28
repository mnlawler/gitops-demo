# Openshift-Gitops

Configuration to install the Openshift-Gitops operator and configure an applicationProject (cluster-base) and an applicationSet (cluster-base) to self manage and configure the rest of this repository as applications in Gitops.
An overlay from this repo can be run into a fresh OpenShift cluster using 'kustomize build . | oc apply -f -' at which point Gitops will be installed and configured, causing the applicationSet to provision the rest of this repository.
