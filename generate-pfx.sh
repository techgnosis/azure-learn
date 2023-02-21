#! /usr/bin/env bash

set -euo pipefail

openssl pkcs12 \
-export \
-password pass:"${PFX_PASSWORD}" \
-out client.pfx \
-inkey key.pem \
-in cert.pem