echo "Running Ansible setup..."
ansible-playbook -i ../inventory/hosts.yml ../main.yml

echo ""
echo "=== Setup Complete ==="
echo ""
echo "Next steps:"
echo "1. Access OPNsense at https://192.168.1.1 (after VM is running)"
echo "2. Access Docker VM at 192.168.100.10 via SSH"
echo "3. Configure OPNsense firewall rules and content filtering"
echo ""
echo "To start the setup manually:"
echo "cd /opt/raspberry-pi-router"
echo "ansible-playbook -i ansible/inventory/hosts ansible/playbooks/main.yml"
"""

with open('raspberry-pi-router/scripts/setup-router.sh', 'w') as f:
f.write(setup_script)
