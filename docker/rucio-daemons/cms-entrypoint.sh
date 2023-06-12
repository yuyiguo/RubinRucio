#! /bin/bash

j2 /tmp/globus-config.yml.j2 | sed '/^\s*$/d' > /opt/rucio/etc/globus-config.yml

# Add the policy package directory to PYTHONPATH
if [ ! -z "$POLICY_PKG_PATH" ]; then
    export PYTHONPATH=${POLICY_PKG_PATH}:${PYTHONPATH:+:}${PYTHONPATH}
fi

/start-daemon.sh
