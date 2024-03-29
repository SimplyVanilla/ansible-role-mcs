# ansible-role-mcs

[![CircleCI](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main.svg?style=svg)](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main)

Ansible role that installs [PaperMC](https://papermc.io/) or [Pufferfish(+)](https://pufferfish.host/)
(Minecraft Server Java forks) on Debian-like systems.

Plugin installation as well as server configuration is currently out-of-scope.

## Installation

### Requirements

In your `requirements.yml`:

```yaml
roles:
  - src: simplyvanilla.mcs
    version: main
```

### Role Variables

```yaml
# Fork to use (paper, pufferfish, pufferfishplus
mcs_fork: paper

# Minecraft release to install
mcs_version: '1.20.1'

# User to run server as
mcs_user: 'mcs'

# Installation path / working directory
mcs_path: '/home/mcs/server'

# Jolokia version (JMX gateway)
mcs_jolokia_version: '2.0.1'

# JVM Heap size in GB
mcs_heap: 10

# set 'MM HH' of when daily restarts should occur
mcs_daily_restart: ''

# enable service
mcs_autostart: true

# restart on detected change
mcs_restart_on_change: true

mcs_pufferfishplus_key: ''
```

### Dependencies

_none_

### Example Playbook

```yaml
- hosts: servers
  tasks:
    - ansible.builtin.import_role:
        name: simplyvanilla.mcs
```

## Usage

```bash
$ sudo systemctl status mcs
```

## License

[GPLv3](LICENSE)
