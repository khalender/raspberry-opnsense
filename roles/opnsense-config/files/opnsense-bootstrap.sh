#!/bin/bash
# OPNsense initial configuration script

# Wait for OPNsense to be accessible
echo "Waiting for OPNsense to be accessible..."
while ! curl -k -s https://10.0.0.1 >/dev/null 2>&1; do
    sleep 10
done

# Configure basic firewall rules via API
# This would typically use OPNsense API calls
echo "OPNsense is now accessible at https://10.0.0.1"
echo "Default credentials: root/opnsense"
echo "Please complete the initial setup wizard manually or via API"
