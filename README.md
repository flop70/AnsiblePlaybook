# MikroTik CHR Automation with Ansible

## Overview
This project demonstrates configuring a MikroTik Cloud Hosted Router (CHR) using Ansible. 
The tasks include firewall configuration, RADIUS client setup, Hotspot configuration, 
and exporting the router configuration.

---

## Steps Performed

1. Deployed MikroTik CHR in VirtualBox.
2. Added a second network interface (ether2).
3. Configured a Hotspot on ether2.
4. Created a firewall rule to block TCP port 443 to 1.1.1.1.
5. Installed Ansible and created a playbook to configure RADIUS.
6. Executed the Ansible playbook successfully.
7. Verified RADIUS client configuration in Winbox.
8. Exported MikroTik configuration to `chr.rsc`.

---

## Challenges Faced

- Understanding where RADIUS appears in Winbox.
- SSH host key verification issue in Ansible.
- VirtualBox Internal Network confusion.

These were resolved by using CLI verification, SSH key acceptance, 
and proper VirtualBox adapter configuration.

---

## References

- https://mikrotik.com/documentation
- https://docs.ansible.com
- https://github.com/ansible-collections/community.routeros
- MikroTik Winbox Tool

---

## Repository Structure

- AnsiblePlaybook/ → Ansible automation files
- Screenshots/ → Proof of configuration
- hosts → Ansible inventory file
- chr.rsc → Exported MikroTik configuration
- presentation.mp3 → Audio explanation
