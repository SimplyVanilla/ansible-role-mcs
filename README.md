# ansible-role-mcs

[![CircleCI](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main.svg?style=svg)](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main)
[![Ansible Quality Score](https://img.shields.io/ansible/quality/59026?style=flat-square)](https://galaxy.ansible.com/simplyvanilla/mcs)
[![Ansible Role](https://img.shields.io/ansible/role/d/59026?style=flat-square)](https://galaxy.ansible.com/simplyvanilla/mcs)

Ansible role that installs [PaperMC](https://papermc.io/) (a Minecraft Server Java fork) on Debian-like systems.

This will restart the server if a new version has been detected and installed.

Plugin installation as well as server configuration is currently out-of-scope.

## Installation

### Role Variables

```
# Minecraft release to install
mcs_version: '1.18.2'

# User to run server as
mcs_user: 'mcs'

# Installation path / working directory
mcs_path: '/home/mcs/server'

# Jolokia version (JMX gateway)
mcs_jolokia_version: '1.7.1'

# JVM Heap size in GB
mcs_heap: '10'
```

### Dependencies

_none_

### Example Playbook

```
- hosts: servers
  roles:
    - src: simplyvanilla.mcs
```

## Usage

```bash
$ sudo systemctl status mcs
```

## License

[GPLv3](LICENSE)
