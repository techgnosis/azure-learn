#! /usr/bin/env bash

set -euo pipefail

az login \
--service-principal \
-u "${CLIENT_ID}" \
-p ./combined.pem \
--tenant "${TENANT_ID}"