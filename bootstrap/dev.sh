#!/bin/bash

# Install operator
kustomize build operator | oc apply -f -

sleep 5;

# The only install plans will be for the gitops operator as nothing else has been installed yet.
installPlan=`oc get installPlans -n openshift-operators --no-headers -o name | head -1`

# Wait on the operator installation
if oc wait -n openshift-operators ${installPlan} --for=condition=Installed --timeout=120s; then
    # Install the configuration
    kustomize build config/overlay/dev | oc apply -f -
else
    echo "Failed to rollout gitops. Please check status before rerunning."
fi
