Ansible Role AWS CLI
=========

Installs AWS Command Line Interface v2 on Debian/Ubuntu servers. 


Role Variables
--------------

```
# Version of 'awscli' to install, defaults to latest version
awscli_version: ""

# Toggling this will uninstall from the server
uninstall: false
```

Dependency
------------
```
sudo apt install python3 python3-pip python3.9-venv -y
```


Setup
------------
```
python3 -m venv venv
source venv/bin/activate
pip3 install -r ./requirements-pip.txt
```


Supported OS
------------

A list of operating systems that have been verified on

* Ubuntu 16.04 (xenial)
* Ubuntu 18.04 (bionic)
* Ubuntu 20.04 (focal)
* Ubuntu 21.04 (hirsute)
* Ubuntu 21.10 (impish)
* Ubuntu 22.04 (jammy)
* Debian 9 (stretch)
* Debian 10 (buster)
* Debian 11 (bullseye)
* Debian 12 (bookworm)

Notes
--------------
Will only work on AWS CLI v2

List of versions available: https://github.com/aws/aws-cli/blob/v2/CHANGELOG.rst


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