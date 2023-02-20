#! /usr/bin/env bash

set -euo pipefail

openssl req \
-subj '/CN=myclientcertificate/O=MyCompany, Inc./ST=CA/C=US' \
-new \
-newkey rsa:4096 \
-sha256 \
-days 730 \
-nodes \
-x509 \
-keyout key.pem \
-out cert.pem

cat key.pem cert.pem > combined.pem