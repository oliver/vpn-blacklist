#!/bin/sh

jq -e ".peers | map(select(.key == \"$PEER_KEY\")) | length == 0" \
    "${1:-blacklist.json}" > /dev/null

RET=$?

# exit 0 for invalid files -> allow every fastd peer_key
if [ $RET -eq 4 ]; then
	exit 0;
fi
exit $RET
