Ansible Role AWS CLI
=========

Installs AWS Command Line Interface v2 on Debian/Ubuntu servers. 

List of versions available: https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst

Role Variables
--------------

```
# Version of 'awscli' to install, defaults to latest version
awscli_version: ""

# Toggling this will uninstall from the server
uninstall: false
```

Example Playbooks
----------------

Minimal:
```
- name: Install CLI
  hosts: all
  roles:
    - role: exzeo.awscli
```

Specific Version:
```
- name: Install CLI
  hosts: all
  roles:
    - role: exzeo.awscli
      vars:
        awscli_version: "2.2.15"
```

Uninstall:
```
- name: Install CLI
  hosts: all
  roles:
    - role: exzeo.awscli
      vars:
        uninstall: true
```