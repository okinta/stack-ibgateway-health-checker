#!/usr/bin/env sh

#
# Loads settings from the Vault, then loads ibgateway-health-checker
#

PT_INT_ID=$(wget -q -O - http://vault.in.okinta.ge:7020/api/kv/pagertree_int_id_ibgateway)
if [ -z "$PT_INT_ID" ]; then
    echo "Could not obtain PagerTree integration ID for IB gateway from Vault" >&2
    exit 1
fi
export PT_INT_ID

if [ "$1" = "run" ]; then
    exec ibgateway-health-checker --host ibgateway.in.okinta.ge --pagertree-int-id "$PT_INT_ID"
else
    exec "$@"
fi
