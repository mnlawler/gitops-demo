#!/bin/bash

# Install operator
kustomize build operator

# Wait on the operator installation

# Install the configuration
kustomize build config/overlay/dev