# ansible-role-mcs

[![CircleCI](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main.svg?style=svg)](https://circleci.com/gh/SimplyVanilla/ansible-role-mcs/tree/main)

Ansible role to install PaperMC (a Java Minecraft Server) on Debian-like systems.

## Role Variables

```
mcs_version: '1.18.2'
```

## Dependencies

_none_

## Example Playbook

```
- hosts: servers
  roles:
    - src: simplyvanilla.mcs
```

## License

[GPLv3](LICENSE)
