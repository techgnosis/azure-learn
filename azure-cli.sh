#! /usr/bin/env bash

set -euo pipefail

colima nerdctl -- \
run \
--rm \
-v "$(PWD)":/root/azure \
-it \
--workdir /root/azure \
--env CLIENT_ID="${CLIENT_ID}" \
--env TENANT_ID="${TENANT_ID}" \
--env PFX_PASSWORD="${PFX_PASSWORD}" \
mcr.microsoft.com/azure-cli \
bash